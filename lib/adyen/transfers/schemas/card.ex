defmodule Adyen.Transfers.Card do
  @moduledoc """
  Provides struct and type for a Card
  """

  @type t :: %__MODULE__{
          cardHolder: Adyen.Transfers.PartyIdentification.t(),
          cardIdentification: Adyen.Transfers.CardIdentification.t()
        }

  defstruct [:cardHolder, :cardIdentification]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cardHolder: {Adyen.Transfers.PartyIdentification, :t},
      cardIdentification: {Adyen.Transfers.CardIdentification, :t}
    ]
  end
end
