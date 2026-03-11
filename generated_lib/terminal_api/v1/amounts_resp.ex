defmodule Adyen.TerminalAPI.V1.AmountsResp do
  @moduledoc """
  Provides struct and type for a AmountsResp
  """

  @type t :: %__MODULE__{
          AuthorizedAmount: number,
          CashBackAmount: number | nil,
          Currency: String.t() | nil,
          TipAmount: number | nil,
          TotalFeesAmount: number | nil,
          TotalRebatesAmount: number | nil
        }

  defstruct [
    :AuthorizedAmount,
    :CashBackAmount,
    :Currency,
    :TipAmount,
    :TotalFeesAmount,
    :TotalRebatesAmount
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      AuthorizedAmount: :number,
      CashBackAmount: :number,
      Currency: :string,
      TipAmount: :number,
      TotalFeesAmount: :number,
      TotalRebatesAmount: :number
    ]
  end
end
