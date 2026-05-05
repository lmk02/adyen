defmodule Adyen.Renderer do
  @moduledoc """
  Custom OpenAPI renderer with Jason encoder support for all structs
  """
  use OpenAPI.Renderer

  alias OpenAPI.Processor.Schema.Field
  alias OpenAPI.Renderer.State
  alias OpenAPI.Renderer.Util

  @impl OpenAPI.Renderer
  def render_schema_struct(state, schemas) do
    fields =
      Enum.map(schemas, & &1.fields)
      |> List.insert_at(0, extra_fields(state))
      |> List.flatten()
      |> Enum.map(&String.to_atom(&1.name))
      |> Enum.sort()
      |> Enum.dedup()

    quote do
      @derive Jason.Encoder
      defstruct unquote(fields)
    end
    |> Util.put_newlines()
  end

  @spec extra_fields(State.t()) :: [Field.t()]
  defp extra_fields(state) do
    extra_fields = config(state)[:extra_fields] || []

    Enum.map(extra_fields, fn {name, type} ->
      %Field{
        name: to_string(name),
        nullable: false,
        private: true,
        required: true,
        type: type
      }
    end)
  end

  @spec config(State.t()) :: keyword
  defp config(%State{profile: profile}) do
    Application.get_env(:oapi_generator, profile) || []
  end
end
