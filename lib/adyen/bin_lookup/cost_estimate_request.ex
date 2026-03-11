defmodule Adyen.BinLookup.CostEstimateRequest do
  @moduledoc """
  Provides struct and type for a CostEstimateRequest
  """

  @type t :: %__MODULE__{
          amount: Adyen.BinLookup.Amount.t(),
          assumptions: Adyen.BinLookup.CostEstimateAssumptions.t() | nil,
          cardNumber: String.t() | nil,
          encryptedCardNumber: String.t() | nil,
          merchantAccount: String.t(),
          merchantDetails: Adyen.BinLookup.MerchantDetails.t() | nil,
          recurring: Adyen.BinLookup.Recurring.t() | nil,
          selectedRecurringDetailReference: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperReference: String.t() | nil
        }

  defstruct [
    :amount,
    :assumptions,
    :cardNumber,
    :encryptedCardNumber,
    :merchantAccount,
    :merchantDetails,
    :recurring,
    :selectedRecurringDetailReference,
    :shopperInteraction,
    :shopperReference
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.BinLookup.Amount, :t},
      assumptions: {Adyen.BinLookup.CostEstimateAssumptions, :t},
      cardNumber: :string,
      encryptedCardNumber: :string,
      merchantAccount: :string,
      merchantDetails: {Adyen.BinLookup.MerchantDetails, :t},
      recurring: {Adyen.BinLookup.Recurring, :t},
      selectedRecurringDetailReference: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperReference: :string
    ]
  end
end
