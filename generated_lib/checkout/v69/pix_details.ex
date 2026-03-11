defmodule Adyen.Checkout.V69.PixDetails do
  @moduledoc """
  Provides struct and type for a PixDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          pixRecurring: Adyen.Checkout.V69.PixRecurring.t() | nil,
          recurringDetailReference: String.t() | nil,
          sdkData: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :checkoutAttemptId,
    :pixRecurring,
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
      checkoutAttemptId: :string,
      pixRecurring: {Adyen.Checkout.V69.PixRecurring, :t},
      recurringDetailReference: :string,
      sdkData: :string,
      storedPaymentMethodId: :string,
      type: {:const, "pix"}
    ]
  end
end
