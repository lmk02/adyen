defmodule Adyen.Payouts.FundSource do
  @moduledoc """
  Provides struct and type for a FundSource
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          billingAddress: Adyen.Payouts.Address.t() | nil,
          card: Adyen.Payouts.Card.t() | nil,
          shopperEmail: String.t() | nil,
          shopperName: Adyen.Payouts.Name.t() | nil,
          telephoneNumber: String.t() | nil
        }

  defstruct [
    :additionalData,
    :billingAddress,
    :card,
    :shopperEmail,
    :shopperName,
    :telephoneNumber
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additionalData: :map,
      billingAddress: {Adyen.Payouts.Address, :t},
      card: {Adyen.Payouts.Card, :t},
      shopperEmail: :string,
      shopperName: {Adyen.Payouts.Name, :t},
      telephoneNumber: :string
    ]
  end
end
