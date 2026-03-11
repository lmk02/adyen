defmodule Adyen.Checkout.V52.AncvDetails do
  @moduledoc """
  Provides struct and type for a AncvDetails
  """

  @type t :: %__MODULE__{
          beneficiaryId: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :beneficiaryId,
    :checkoutAttemptId,
    :recurringDetailReference,
    :storedPaymentMethodId,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      beneficiaryId: :string,
      checkoutAttemptId: :string,
      recurringDetailReference: :string,
      storedPaymentMethodId: :string,
      type: {:const, "ancv"}
    ]
  end
end
