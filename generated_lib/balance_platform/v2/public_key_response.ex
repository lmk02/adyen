defmodule Adyen.BalancePlatform.V2.PublicKeyResponse do
  @moduledoc """
  Provides struct and type for a PublicKeyResponse
  """

  @type t :: %__MODULE__{publicKey: String.t(), publicKeyExpiryDate: String.t()}

  defstruct [:publicKey, :publicKeyExpiryDate]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [publicKey: :string, publicKeyExpiryDate: :string]
  end
end
