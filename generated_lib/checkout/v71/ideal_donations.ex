defmodule Adyen.Checkout.V71.IdealDonations do
  @moduledoc """
  Provides struct and type for a IdealDonations
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          issuer: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          sdkData: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :checkoutAttemptId,
    :issuer,
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
      issuer: :string,
      recurringDetailReference: :string,
      sdkData: :string,
      storedPaymentMethodId: :string,
      type: {:const, "ideal"}
    ]
  end
end
