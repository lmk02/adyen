defmodule Adyen.BalancePlatform.V2.PinChangeRequest do
  @moduledoc """
  Provides struct and type for a PinChangeRequest
  """

  @type t :: %__MODULE__{
          encryptedKey: String.t(),
          encryptedPinBlock: String.t(),
          paymentInstrumentId: String.t(),
          token: String.t()
        }

  defstruct [:encryptedKey, :encryptedPinBlock, :paymentInstrumentId, :token]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      encryptedKey: :string,
      encryptedPinBlock: :string,
      paymentInstrumentId: :string,
      token: :string
    ]
  end
end
