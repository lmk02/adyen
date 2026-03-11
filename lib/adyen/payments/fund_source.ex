defmodule Adyen.Payments.FundSource do
  @moduledoc """
  Provides struct and type for a FundSource
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          billingAddress: Adyen.Payments.Address.t() | nil,
          card: Adyen.Payments.Card.t() | nil,
          shopperEmail: String.t() | nil,
          shopperName: Adyen.Payments.Name.t() | nil,
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
      billingAddress: {Adyen.Payments.Address, :t},
      card: {Adyen.Payments.Card, :t},
      shopperEmail: :string,
      shopperName: {Adyen.Payments.Name, :t},
      telephoneNumber: :string
    ]
  end
end
