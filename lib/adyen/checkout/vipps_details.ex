defmodule Adyen.Checkout.VippsDetails do
  @moduledoc """
  Provides struct and type for a VippsDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          sdkData: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          telephoneNumber: String.t(),
          type: String.t() | nil
        }

  defstruct [
    :checkoutAttemptId,
    :recurringDetailReference,
    :sdkData,
    :storedPaymentMethodId,
    :telephoneNumber,
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
      storedPaymentMethodId: :string,
      telephoneNumber: :string,
      type: {:const, "vipps"}
    ]
  end
end
