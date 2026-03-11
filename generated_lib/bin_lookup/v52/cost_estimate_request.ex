defmodule Adyen.BinLookup.V52.CostEstimateRequest do
  @moduledoc """
  Provides struct and type for a CostEstimateRequest
  """

  @type t :: %__MODULE__{
          amount: Adyen.BinLookup.V52.Amount.t(),
          assumptions: Adyen.BinLookup.V52.CostEstimateAssumptions.t() | nil,
          cardNumber: String.t() | nil,
          encryptedCardNumber: String.t() | nil,
          merchantAccount: String.t(),
          merchantDetails: Adyen.BinLookup.V52.MerchantDetails.t() | nil,
          recurring: Adyen.BinLookup.V52.Recurring.t() | nil,
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
      amount: {Adyen.BinLookup.V52.Amount, :t},
      assumptions: {Adyen.BinLookup.V52.CostEstimateAssumptions, :t},
      cardNumber: :string,
      encryptedCardNumber: :string,
      merchantAccount: :string,
      merchantDetails: {Adyen.BinLookup.V52.MerchantDetails, :t},
      recurring: {Adyen.BinLookup.V52.Recurring, :t},
      selectedRecurringDetailReference: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperReference: :string
    ]
  end
end
