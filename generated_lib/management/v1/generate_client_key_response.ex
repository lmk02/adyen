defmodule Adyen.Management.V1.GenerateClientKeyResponse do
  @moduledoc """
  Provides struct and type for a GenerateClientKeyResponse
  """

  @type t :: %__MODULE__{clientKey: String.t()}

  defstruct [:clientKey]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [clientKey: :string]
  end
end
