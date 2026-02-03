defmodule Adyen.Transfers.Card do
  @moduledoc """
  Provides struct and type for a Card
  """

  alias Adyen.Transfers.CardIdentification
  alias Adyen.Transfers.PartyIdentification

  @type t :: %__MODULE__{
          cardHolder: PartyIdentification.t(),
          cardIdentification: CardIdentification.t()
        }

  defstruct [:cardHolder, :cardIdentification]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cardHolder: {PartyIdentification, :t},
      cardIdentification: {CardIdentification, :t}
    ]
  end
end
