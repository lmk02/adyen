defmodule Adyen.Checkout.V69.CashAppDetails do
  @moduledoc """
  Provides struct and type for a CashAppDetails
  """

  @type t :: %__MODULE__{
          cashtag: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          customerId: String.t() | nil,
          grantId: String.t() | nil,
          onFileGrantId: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          requestId: String.t() | nil,
          sdkData: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          subtype: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :cashtag,
    :checkoutAttemptId,
    :customerId,
    :grantId,
    :onFileGrantId,
    :recurringDetailReference,
    :requestId,
    :sdkData,
    :storedPaymentMethodId,
    :subtype,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cashtag: :string,
      checkoutAttemptId: :string,
      customerId: :string,
      grantId: :string,
      onFileGrantId: :string,
      recurringDetailReference: :string,
      requestId: :string,
      sdkData: :string,
      storedPaymentMethodId: :string,
      subtype: :string,
      type: {:const, "cashapp"}
    ]
  end
end
