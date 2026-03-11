defmodule Adyen.Accounts.AccountHolderStatus do
  @moduledoc """
  Provides struct and type for a AccountHolderStatus
  """

  @type t :: %__MODULE__{
          events: [Adyen.Accounts.AccountEvent.t()] | nil,
          payoutState: Adyen.Accounts.AccountPayoutState.t() | nil,
          processingState: Adyen.Accounts.AccountProcessingState.t() | nil,
          status: String.t(),
          statusReason: String.t() | nil
        }

  defstruct [:events, :payoutState, :processingState, :status, :statusReason]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      events: [{Adyen.Accounts.AccountEvent, :t}],
      payoutState: {Adyen.Accounts.AccountPayoutState, :t},
      processingState: {Adyen.Accounts.AccountProcessingState, :t},
      status: {:enum, ["Active", "Closed", "Inactive", "Suspended"]},
      statusReason: :string
    ]
  end
end
