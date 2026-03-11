defmodule Adyen.Checkout.V52.CheckoutBankAccount do
  @moduledoc """
  Provides struct and type for a CheckoutBankAccount
  """

  @type t :: %__MODULE__{
          accountType: String.t() | nil,
          bankAccountNumber: String.t() | nil,
          bankCity: String.t() | nil,
          bankLocationId: String.t() | nil,
          bankName: String.t() | nil,
          bic: String.t() | nil,
          countryCode: String.t() | nil,
          iban: String.t() | nil,
          ownerName: String.t() | nil,
          taxId: String.t() | nil
        }

  defstruct [
    :accountType,
    :bankAccountNumber,
    :bankCity,
    :bankLocationId,
    :bankName,
    :bic,
    :countryCode,
    :iban,
    :ownerName,
    :taxId
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountType:
        {:enum, ["balance", "checking", "deposit", "general", "other", "payment", "savings"]},
      bankAccountNumber: :string,
      bankCity: :string,
      bankLocationId: :string,
      bankName: :string,
      bic: :string,
      countryCode: :string,
      iban: :string,
      ownerName: :string,
      taxId: :string
    ]
  end
end
