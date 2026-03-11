defmodule Adyen.Checkout.V52.VippsDetails do
  @moduledoc """
  Provides struct and type for a VippsDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          telephoneNumber: String.t(),
          type: String.t() | nil
        }

  defstruct [
    :checkoutAttemptId,
    :recurringDetailReference,
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
      storedPaymentMethodId: :string,
      telephoneNumber: :string,
      type: {:const, "vipps"}
    ]
  end
end
