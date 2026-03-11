defmodule Adyen.Checkout.V71.BlikDetails do
  @moduledoc """
  Provides struct and type for a BlikDetails
  """

  @type t :: %__MODULE__{
          blikCode: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          sdkData: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :blikCode,
    :checkoutAttemptId,
    :recurringDetailReference,
    :sdkData,
    :storedPaymentMethodId,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      blikCode: :string,
      checkoutAttemptId: :string,
      recurringDetailReference: :string,
      sdkData: :string,
      storedPaymentMethodId: :string,
      type: {:const, "blik"}
    ]
  end
end
