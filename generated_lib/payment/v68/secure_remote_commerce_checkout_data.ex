defmodule Adyen.Payment.V68.SecureRemoteCommerceCheckoutData do
  @moduledoc """
  Provides struct and type for a SecureRemoteCommerceCheckoutData
  """

  @type t :: %__MODULE__{
          checkoutPayload: String.t() | nil,
          correlationId: String.t() | nil,
          cvc: String.t() | nil,
          digitalCardId: String.t() | nil,
          scheme: String.t() | nil,
          tokenReference: String.t() | nil
        }

  defstruct [:checkoutPayload, :correlationId, :cvc, :digitalCardId, :scheme, :tokenReference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checkoutPayload: :string,
      correlationId: :string,
      cvc: :string,
      digitalCardId: :string,
      scheme: {:enum, ["mc", "visa"]},
      tokenReference: :string
    ]
  end
end
