defmodule Adyen.Checkout.V69.PayToDetails do
  @moduledoc """
  Provides struct and type for a PayToDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          sdkData: String.t() | nil,
          shopperAccountIdentifier: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :checkoutAttemptId,
    :recurringDetailReference,
    :sdkData,
    :shopperAccountIdentifier,
    :storedPaymentMethodId,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checkoutAttemptId: :string,
      recurringDetailReference: :string,
      sdkData: :string,
      shopperAccountIdentifier: :string,
      storedPaymentMethodId: :string,
      type: {:const, "payto"}
    ]
  end
end
