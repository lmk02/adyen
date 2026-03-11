defmodule Adyen.Checkout.V52.CheckoutBankTransferAction do
  @moduledoc """
  Provides struct and type for a CheckoutBankTransferAction
  """

  @type t :: %__MODULE__{
          accountNumber: String.t() | nil,
          bankCode: String.t() | nil,
          beneficiary: String.t() | nil,
          bic: String.t() | nil,
          branchCode: String.t() | nil,
          downloadUrl: String.t() | nil,
          iban: String.t() | nil,
          paymentMethodType: String.t() | nil,
          reference: String.t() | nil,
          routingNumber: String.t() | nil,
          shopperEmail: String.t() | nil,
          sortCode: String.t() | nil,
          totalAmount: Adyen.Checkout.V52.Amount.t() | nil,
          type: String.t(),
          url: String.t() | nil
        }

  defstruct [
    :accountNumber,
    :bankCode,
    :beneficiary,
    :bic,
    :branchCode,
    :downloadUrl,
    :iban,
    :paymentMethodType,
    :reference,
    :routingNumber,
    :shopperEmail,
    :sortCode,
    :totalAmount,
    :type,
    :url
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountNumber: :string,
      bankCode: :string,
      beneficiary: :string,
      bic: :string,
      branchCode: :string,
      downloadUrl: :string,
      iban: :string,
      paymentMethodType: :string,
      reference: :string,
      routingNumber: :string,
      shopperEmail: :string,
      sortCode: :string,
      totalAmount: {Adyen.Checkout.V52.Amount, :t},
      type: {:const, "bankTransfer"},
      url: :string
    ]
  end
end
