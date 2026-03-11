defmodule Adyen.BalancePlatform.V2.TransferLimit do
  @moduledoc """
  Provides struct and type for a TransferLimit
  """

  @type t :: %__MODULE__{
          amount: Adyen.BalancePlatform.V2.Amount.t(),
          endsAt: DateTime.t() | nil,
          id: String.t(),
          limitStatus: String.t(),
          reference: String.t() | nil,
          scaInformation: Adyen.BalancePlatform.V2.ScaInformation.t() | nil,
          scope: String.t(),
          startsAt: DateTime.t(),
          transferType: String.t()
        }

  defstruct [
    :amount,
    :endsAt,
    :id,
    :limitStatus,
    :reference,
    :scaInformation,
    :scope,
    :startsAt,
    :transferType
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.BalancePlatform.V2.Amount, :t},
      endsAt: {:string, "date-time"},
      id: :string,
      limitStatus: {:enum, ["active", "inactive", "pendingSCA", "scheduled"]},
      reference: :string,
      scaInformation: {Adyen.BalancePlatform.V2.ScaInformation, :t},
      scope: {:enum, ["perDay", "perTransaction"]},
      startsAt: {:string, "date-time"},
      transferType: {:enum, ["instant", "all"]}
    ]
  end
end
