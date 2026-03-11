defmodule Adyen.Checkout.V37.SubMerchantInfo do
  @moduledoc """
  Provides struct and type for a SubMerchantInfo
  """

  @type t :: %__MODULE__{
          address: Adyen.Checkout.V37.BillingAddress.t() | nil,
          amount: Adyen.Checkout.V37.Amount.t() | nil,
          email: String.t() | nil,
          id: String.t() | nil,
          mcc: String.t() | nil,
          name: String.t() | nil,
          phoneNumber: String.t() | nil,
          registeredSince: String.t() | nil,
          taxId: String.t() | nil,
          url: String.t() | nil
        }

  defstruct [
    :address,
    :amount,
    :email,
    :id,
    :mcc,
    :name,
    :phoneNumber,
    :registeredSince,
    :taxId,
    :url
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {Adyen.Checkout.V37.BillingAddress, :t},
      amount: {Adyen.Checkout.V37.Amount, :t},
      email: :string,
      id: :string,
      mcc: :string,
      name: :string,
      phoneNumber: :string,
      registeredSince: :string,
      taxId: :string,
      url: :string
    ]
  end
end
