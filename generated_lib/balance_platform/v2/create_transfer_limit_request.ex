defmodule Adyen.BalancePlatform.V2.CreateTransferLimitRequest do
  @moduledoc """
  Provides struct and type for a CreateTransferLimitRequest
  """

  @type t :: %__MODULE__{
          amount: Adyen.BalancePlatform.V2.Amount.t(),
          endsAt: DateTime.t() | nil,
          reference: String.t() | nil,
          scaInformation: Adyen.BalancePlatform.V2.CreateScaInformation.t() | nil,
          scope: String.t(),
          startsAt: DateTime.t() | nil,
          transferType: String.t()
        }

  defstruct [:amount, :endsAt, :reference, :scaInformation, :scope, :startsAt, :transferType]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.BalancePlatform.V2.Amount, :t},
      endsAt: {:string, "date-time"},
      reference: :string,
      scaInformation: {Adyen.BalancePlatform.V2.CreateScaInformation, :t},
      scope: {:enum, ["perDay", "perTransaction"]},
      startsAt: {:string, "date-time"},
      transferType: {:enum, ["instant", "all"]}
    ]
  end
end
