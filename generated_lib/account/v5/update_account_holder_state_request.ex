defmodule Adyen.Account.V5.UpdateAccountHolderStateRequest do
  @moduledoc """
  Provides struct and type for a UpdateAccountHolderStateRequest
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t(),
          disable: boolean,
          reason: String.t() | nil,
          stateType: String.t()
        }

  defstruct [:accountHolderCode, :disable, :reason, :stateType]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderCode: :string,
      disable: :boolean,
      reason: :string,
      stateType:
        {:enum,
         [
           "LimitedPayout",
           "LimitedProcessing",
           "LimitlessPayout",
           "LimitlessProcessing",
           "Payout",
           "Processing"
         ]}
    ]
  end
end
