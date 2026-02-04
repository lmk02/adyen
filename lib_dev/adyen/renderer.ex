defmodule Adyen.Renderer do
  @moduledoc """
  Custom renderer for oapi_generator to organize files.

  Moves schema files into a `schemas/` subdirectory.
  """
  use OpenAPI.Renderer

  @impl OpenAPI.Renderer
  def location(state, file) do
    default_path = OpenAPI.Renderer.Module.filename(state, file)

    cond do
      length(file.schemas) > 0 ->
        # It is a schema file. Move to schemas/ subdirectory.
        dir = Path.dirname(default_path)
        base = Path.basename(default_path)
        Path.join([dir, "schemas", base])

      true ->
        # Operations or other files stay in default location
        default_path
    end
  end
end
