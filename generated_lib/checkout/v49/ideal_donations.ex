defmodule Adyen.Checkout.V49.IdealDonations do
  @moduledoc """
  Provides struct and type for a IdealDonations
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          issuer: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :checkoutAttemptId,
    :issuer,
    :recurringDetailReference,
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
      storedPaymentMethodId: :string,
      type: {:const, "ideal"}
    ]
  end
end
