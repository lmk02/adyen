defmodule Adyen.Checkout.V40.FundRecipient do
  @moduledoc """
  Provides struct and type for a FundRecipient
  """

  @type t :: %__MODULE__{
          IBAN: String.t() | nil,
          billingAddress: Adyen.Checkout.V40.Address.t() | nil,
          paymentMethod: Adyen.Checkout.V40.CardDetails.t() | nil,
          shopperEmail: String.t() | nil,
          shopperName: Adyen.Checkout.V40.Name.t() | nil,
          shopperReference: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          subMerchant: Adyen.Checkout.V40.SubMerchant.t() | nil,
          telephoneNumber: String.t() | nil,
          walletIdentifier: String.t() | nil,
          walletOwnerTaxId: String.t() | nil,
          walletPurpose: String.t() | nil
        }

  defstruct [
    :IBAN,
    :billingAddress,
    :paymentMethod,
    :shopperEmail,
    :shopperName,
    :shopperReference,
    :storedPaymentMethodId,
    :subMerchant,
    :telephoneNumber,
    :walletIdentifier,
    :walletOwnerTaxId,
    :walletPurpose
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      IBAN: :string,
      billingAddress: {Adyen.Checkout.V40.Address, :t},
      paymentMethod: {Adyen.Checkout.V40.CardDetails, :t},
      shopperEmail: :string,
      shopperName: {Adyen.Checkout.V40.Name, :t},
      shopperReference: :string,
      storedPaymentMethodId: :string,
      subMerchant: {Adyen.Checkout.V40.SubMerchant, :t},
      telephoneNumber: :string,
      walletIdentifier: :string,
      walletOwnerTaxId: :string,
      walletPurpose:
        {:enum,
         [
           "identifiedBoleto",
           "transferDifferentWallet",
           "transferOwnWallet",
           "transferSameWallet",
           "unidentifiedBoleto"
         ]}
    ]
  end
end
