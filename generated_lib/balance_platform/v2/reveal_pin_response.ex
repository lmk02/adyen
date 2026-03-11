defmodule Adyen.BalancePlatform.V2.RevealPinResponse do
  @moduledoc """
  Provides struct and type for a RevealPinResponse
  """

  @type t :: %__MODULE__{encryptedPinBlock: String.t(), token: String.t()}

  defstruct [:encryptedPinBlock, :token]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [encryptedPinBlock: :string, token: :string]
  end
end
