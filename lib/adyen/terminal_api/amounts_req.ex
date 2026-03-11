defmodule Adyen.TerminalAPI.AmountsReq do
  @moduledoc """
  Provides struct and type for a AmountsReq
  """

  @type t :: %__MODULE__{
          CashBackAmount: number | nil,
          Currency: String.t(),
          MaximumCashBackAmount: number | nil,
          MinimumAmountToDeliver: number | nil,
          MinimumSplitAmount: number | nil,
          PaidAmount: number | nil,
          RequestedAmount: number,
          TipAmount: number | nil
        }

  defstruct [
    :CashBackAmount,
    :Currency,
    :MaximumCashBackAmount,
    :MinimumAmountToDeliver,
    :MinimumSplitAmount,
    :PaidAmount,
    :RequestedAmount,
    :TipAmount
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      CashBackAmount: :number,
      Currency: :string,
      MaximumCashBackAmount: :number,
      MinimumAmountToDeliver: :number,
      MinimumSplitAmount: :number,
      PaidAmount: :number,
      RequestedAmount: :number,
      TipAmount: :number
    ]
  end
end
