defmodule Adyen.Account.V6.AccountHolderStatus do
  @moduledoc """
  Provides struct and type for a AccountHolderStatus
  """

  @type t :: %__MODULE__{
          events: [Adyen.Account.V6.AccountEvent.t()] | nil,
          payoutState: Adyen.Account.V6.AccountPayoutState.t() | nil,
          processingState: Adyen.Account.V6.AccountProcessingState.t() | nil,
          status: String.t(),
          statusReason: String.t() | nil
        }

  defstruct [:events, :payoutState, :processingState, :status, :statusReason]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      events: [{Adyen.Account.V6.AccountEvent, :t}],
      payoutState: {Adyen.Account.V6.AccountPayoutState, :t},
      processingState: {Adyen.Account.V6.AccountProcessingState, :t},
      status: {:enum, ["Active", "Closed", "Inactive", "Suspended"]},
      statusReason: :string
    ]
  end
end
