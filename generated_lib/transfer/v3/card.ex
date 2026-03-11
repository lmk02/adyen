defmodule Adyen.Transfer.V3.Card do
  @moduledoc """
  Provides struct and type for a Card
  """

  @type t :: %__MODULE__{
          cardHolder: Adyen.Transfer.V3.PartyIdentification.t(),
          cardIdentification: Adyen.Transfer.V3.CardIdentification.t()
        }

  defstruct [:cardHolder, :cardIdentification]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cardHolder: {Adyen.Transfer.V3.PartyIdentification, :t},
      cardIdentification: {Adyen.Transfer.V3.CardIdentification, :t}
    ]
  end
end
