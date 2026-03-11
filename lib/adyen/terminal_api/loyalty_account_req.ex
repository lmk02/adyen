defmodule Adyen.TerminalAPI.LoyaltyAccountReq do
  @moduledoc """
  Provides struct and type for a LoyaltyAccountReq
  """

  @type t :: %__MODULE__{
          CardAcquisitionReference: Adyen.TerminalAPI.TransactionIDType.t() | nil,
          LoyaltyAccountID: Adyen.TerminalAPI.LoyaltyAccountID.t() | nil
        }

  defstruct [:CardAcquisitionReference, :LoyaltyAccountID]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      CardAcquisitionReference: {Adyen.TerminalAPI.TransactionIDType, :t},
      LoyaltyAccountID: {Adyen.TerminalAPI.LoyaltyAccountID, :t}
    ]
  end
end
