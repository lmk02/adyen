defmodule Adyen.TerminalAPI.LoyaltyResult do
  @moduledoc """
  Provides struct and type for a LoyaltyResult
  """

  @type t :: %__MODULE__{
          CurrentBalance: number | nil,
          LoyaltyAccount: Adyen.TerminalAPI.LoyaltyAccount.t(),
          LoyaltyAcquirerData: Adyen.TerminalAPI.LoyaltyAcquirerData.t() | nil
        }

  defstruct [:CurrentBalance, :LoyaltyAccount, :LoyaltyAcquirerData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      CurrentBalance: :number,
      LoyaltyAccount: {Adyen.TerminalAPI.LoyaltyAccount, :t},
      LoyaltyAcquirerData: {Adyen.TerminalAPI.LoyaltyAcquirerData, :t}
    ]
  end
end
