defmodule Adyen.TerminalAPI.V1.LoyaltyAccount do
  @moduledoc """
  Provides struct and type for a LoyaltyAccount
  """

  @type t :: %__MODULE__{
          LoyaltyAccountID: Adyen.TerminalAPI.V1.LoyaltyAccountID.t(),
          LoyaltyBrand: String.t() | nil
        }

  defstruct [:LoyaltyAccountID, :LoyaltyBrand]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [LoyaltyAccountID: {Adyen.TerminalAPI.V1.LoyaltyAccountID, :t}, LoyaltyBrand: :string]
  end
end
