defmodule Adyen.Management.V3.GenerateHmacKeyResponse do
  @moduledoc """
  Provides struct and type for a GenerateHmacKeyResponse
  """

  @type t :: %__MODULE__{hmacKey: String.t()}

  defstruct [:hmacKey]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [hmacKey: :string]
  end
end
