defmodule Adyen.Checkout.V50.StoredDetails do
  @moduledoc """
  Provides struct and type for a StoredDetails
  """

  @type t :: %__MODULE__{
          bank: Adyen.Checkout.V50.BankAccount.t() | nil,
          card: Adyen.Checkout.V50.Card.t() | nil,
          emailAddress: String.t() | nil
        }

  defstruct [:bank, :card, :emailAddress]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bank: {Adyen.Checkout.V50.BankAccount, :t},
      card: {Adyen.Checkout.V50.Card, :t},
      emailAddress: :string
    ]
  end
end
