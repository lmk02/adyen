defmodule Adyen.Management.GenerateApiKeyResponse do
  @moduledoc """
  Provides struct and type for a GenerateApiKeyResponse
  """

  @type t :: %__MODULE__{apiKey: String.t()}

  defstruct [:apiKey]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [apiKey: :string]
  end
end
