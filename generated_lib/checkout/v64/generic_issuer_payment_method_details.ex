defmodule Adyen.Checkout.V64.GenericIssuerPaymentMethodDetails do
  @moduledoc """
  Provides struct and type for a GenericIssuerPaymentMethodDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          issuer: String.t(),
          recurringDetailReference: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          type: String.t()
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
      type:
        {:enum,
         ["onlineBanking_PL", "eps", "onlineBanking_SK", "onlineBanking_CZ", "onlinebanking_IN"]}
    ]
  end
end
