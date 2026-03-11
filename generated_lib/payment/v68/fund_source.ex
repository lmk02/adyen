defmodule Adyen.Payment.V68.FundSource do
  @moduledoc """
  Provides struct and type for a FundSource
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          billingAddress: Adyen.Payment.V68.Address.t() | nil,
          card: Adyen.Payment.V68.Card.t() | nil,
          shopperEmail: String.t() | nil,
          shopperName: Adyen.Payment.V68.Name.t() | nil,
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
      billingAddress: {Adyen.Payment.V68.Address, :t},
      card: {Adyen.Payment.V68.Card, :t},
      shopperEmail: :string,
      shopperName: {Adyen.Payment.V68.Name, :t},
      telephoneNumber: :string
    ]
  end
end
