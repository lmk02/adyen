defmodule Adyen.Payment.V68.FundDestination do
  @moduledoc """
  Provides struct and type for a FundDestination
  """

  @type t :: %__MODULE__{
          IBAN: String.t() | nil,
          additionalData: map | nil,
          billingAddress: Adyen.Payment.V68.Address.t() | nil,
          card: Adyen.Payment.V68.Card.t() | nil,
          selectedRecurringDetailReference: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperName: Adyen.Payment.V68.Name.t() | nil,
          shopperReference: String.t() | nil,
          subMerchant: Adyen.Payment.V68.SubMerchant.t() | nil,
          telephoneNumber: String.t() | nil,
          walletPurpose: String.t() | nil
        }

  defstruct [
    :IBAN,
    :additionalData,
    :billingAddress,
    :card,
    :selectedRecurringDetailReference,
    :shopperEmail,
    :shopperName,
    :shopperReference,
    :subMerchant,
    :telephoneNumber,
    :walletPurpose
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      IBAN: :string,
      additionalData: :map,
      billingAddress: {Adyen.Payment.V68.Address, :t},
      card: {Adyen.Payment.V68.Card, :t},
      selectedRecurringDetailReference: :string,
      shopperEmail: :string,
      shopperName: {Adyen.Payment.V68.Name, :t},
      shopperReference: :string,
      subMerchant: {Adyen.Payment.V68.SubMerchant, :t},
      telephoneNumber: :string,
      walletPurpose: :string
    ]
  end
end
