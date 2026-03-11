defmodule Adyen.Codegen do
  @moduledoc """
  On-the-fly code generation using oapi_generator's internal logic.
  """

  alias OpenAPI.Call
  alias OpenAPI.Processor
  alias OpenAPI.Processor.Schema
  alias OpenAPI.Reader
  alias OpenAPI.State

  @doc """
  Generates AST for a given service and version.
  """
  @spec generate_ast(String.t(), String.t()) :: list(Macro.t())
  def generate_ast(service, version) do
    specs_dir = get_specs_dir()
    filename = "#{service}-#{version}.json"
    spec_path = Path.join(specs_dir, filename)

    if File.exists?(spec_path) do
      do_generate_ast(service, version, spec_path)
    else
      []
    end
  end

  defp get_specs_dir do
    case :code.priv_dir(:adyen) do
      {:error, :bad_name} -> "priv/specs/json"
      path -> Path.join([path, "specs", "json"])
    end
  end

  defp do_generate_ast(service, version, spec_path) do
    profile_name = "adyen_#{Macro.underscore(service)}_#{version}"
    clean_name = String.replace(service, "Service", "")
    base_module = Module.concat(["Adyen", clean_name, String.capitalize(version)])

    Application.put_env(:oapi_generator, String.to_atom(profile_name),
      output: [
        base_module: base_module,
        default_client: Adyen.Client
      ]
    )

    state =
      profile_name
      |> Call.new([spec_path])
      |> State.new()
      |> Reader.run()
      |> Processor.run()

    renderer_state = OpenAPI.Renderer.State.new(state)

    files_by_module =
      renderer_state
      |> collect_files()
      |> render_ast()

    Enum.map(files_by_module, fn {_mod, file} -> strip_context(file.ast) end)
  end

  defp strip_context(ast) do
    Macro.prewalk(ast, fn
      {name, meta, context} when is_atom(name) and is_list(meta) and is_atom(context) ->
        {name, meta, nil}

      other ->
        other
    end)
  end

  defp collect_files(state) do
    %OpenAPI.Renderer.State{operations: operations, schemas: schemas} = state

    for item <- operations ++ Map.values(schemas), reduce: state do
      state ->
        case item do
          %OpenAPI.Processor.Operation{module_name: module} ->
            OpenAPI.Renderer.State.update_files(state, module, item)

          %Schema{module_name: nil} ->
            state

          %Schema{module_name: module} ->
            OpenAPI.Renderer.State.update_files(state, module, item)
        end
    end
  end

  defp render_ast(%OpenAPI.Renderer.State{files: files_by_module, implementation: impl} = state) do
    for {module, file} <- files_by_module, into: %{} do
      file = %{file | ast: impl.render(state, file)}
      {module, file}
    end
  end
end
