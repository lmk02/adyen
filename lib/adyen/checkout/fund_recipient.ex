defmodule Adyen.Checkout.FundRecipient do
  @moduledoc """
  Provides struct and type for a FundRecipient
  """

  alias Adyen.Checkout.Address
  alias Adyen.Checkout.CardDetails
  alias Adyen.Checkout.Name
  alias Adyen.Checkout.SubMerchant

  @type t :: %__MODULE__{
          IBAN: String.t() | nil,
          billingAddress: Address.t() | nil,
          paymentMethod: CardDetails.t() | nil,
          shopperEmail: String.t() | nil,
          shopperName: Name.t() | nil,
          shopperReference: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          subMerchant: SubMerchant.t() | nil,
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
      billingAddress: {Address, :t},
      paymentMethod: {CardDetails, :t},
      shopperEmail: :string,
      shopperName: {Name, :t},
      shopperReference: :string,
      storedPaymentMethodId: :string,
      subMerchant: {SubMerchant, :t},
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
