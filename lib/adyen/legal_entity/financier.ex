defmodule Adyen.LegalEntity.Financier do
  @moduledoc """
  Provides struct and type for a Financier
  """

  @type t :: %__MODULE__{
          amount: Adyen.LegalEntity.Amount.t(),
          firstName: String.t(),
          lastName: String.t(),
          location: String.t()
        }

  defstruct [:amount, :firstName, :lastName, :location]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.LegalEntity.Amount, :t},
      firstName: :string,
      lastName: :string,
      location: :string
    ]
  end
end
