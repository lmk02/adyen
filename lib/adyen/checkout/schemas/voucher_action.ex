defmodule Adyen.Checkout.VoucherAction do
  @moduledoc """
  Provides struct and type for a CheckoutVoucherAction
  """

  @type t :: %__MODULE__{
          alternativeReference: String.t() | nil,
          collectionInstitutionNumber: String.t() | nil,
          downloadUrl: String.t() | nil,
          entity: String.t() | nil,
          expiresAt: String.t() | nil,
          initialAmount: Adyen.Checkout.Amount.t() | nil,
          instructionsUrl: String.t() | nil,
          issuer: String.t() | nil,
          maskedTelephoneNumber: String.t() | nil,
          merchantName: String.t() | nil,
          merchantReference: String.t() | nil,
          passCreationToken: String.t() | nil,
          paymentData: String.t() | nil,
          paymentMethodType: String.t() | nil,
          reference: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperName: String.t() | nil,
          surcharge: Adyen.Checkout.Amount.t() | nil,
          totalAmount: Adyen.Checkout.Amount.t() | nil,
          type: String.t(),
          url: String.t() | nil
        }

  defstruct [
    :alternativeReference,
    :collectionInstitutionNumber,
    :downloadUrl,
    :entity,
    :expiresAt,
    :initialAmount,
    :instructionsUrl,
    :issuer,
    :maskedTelephoneNumber,
    :merchantName,
    :merchantReference,
    :passCreationToken,
    :paymentData,
    :paymentMethodType,
    :reference,
    :shopperEmail,
    :shopperName,
    :surcharge,
    :totalAmount,
    :type,
    :url
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      alternativeReference: :string,
      collectionInstitutionNumber: :string,
      downloadUrl: :string,
      entity: :string,
      expiresAt: :string,
      initialAmount: {Adyen.Checkout.Amount, :t},
      instructionsUrl: :string,
      issuer: :string,
      maskedTelephoneNumber: :string,
      merchantName: :string,
      merchantReference: :string,
      passCreationToken: :string,
      paymentData: :string,
      paymentMethodType: :string,
      reference: :string,
      shopperEmail: :string,
      shopperName: :string,
      surcharge: {Adyen.Checkout.Amount, :t},
      totalAmount: {Adyen.Checkout.Amount, :t},
      type: {:const, "voucher"},
      url: :string
    ]
  end
end
