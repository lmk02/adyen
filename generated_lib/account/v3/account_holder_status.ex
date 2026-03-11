defmodule Adyen.Account.V3.AccountHolderStatus do
  @moduledoc """
  Provides struct and type for a AccountHolderStatus
  """

  @type t :: %__MODULE__{
          events: [Adyen.Account.V3.AccountEventWrapper.t()] | nil,
          payoutState: Adyen.Account.V3.AccountPayoutState.t() | nil,
          processingState: Adyen.Account.V3.AccountProcessingState.t() | nil,
          status: String.t(),
          statusReason: String.t() | nil
        }

  defstruct [:events, :payoutState, :processingState, :status, :statusReason]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      events: [{Adyen.Account.V3.AccountEventWrapper, :t}],
      payoutState: {Adyen.Account.V3.AccountPayoutState, :t},
      processingState: {Adyen.Account.V3.AccountProcessingState, :t},
      status: {:enum, ["Active", "Closed", "Inactive", "Suspended"]},
      statusReason: :string
    ]
  end
end
