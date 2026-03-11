defmodule Adyen.OpenBanking.ACHAccountIdentifier do
  @moduledoc """
  Provides struct and type for a ACHAccountIdentifier
  """

  @type t :: %__MODULE__{
          accountLastDigits: String.t() | nil,
          accountNumber: String.t(),
          isTokenized: boolean | nil,
          routingNumber: String.t()
        }

  defstruct [:accountLastDigits, :accountNumber, :isTokenized, :routingNumber]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountLastDigits: :string,
      accountNumber: :string,
      isTokenized: :boolean,
      routingNumber: :string
    ]
  end
end
