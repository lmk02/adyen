defmodule Adyen.TerminalAPI.CardAcquisitionRequest do
  @moduledoc """
  Provides struct and type for a CardAcquisitionRequest
  """

  @type t :: %__MODULE__{
          CardAcquisitionTransaction: Adyen.TerminalAPI.CardAcquisitionTransaction.t(),
          SaleData: Adyen.TerminalAPI.SaleData.t()
        }

  defstruct [:CardAcquisitionTransaction, :SaleData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      CardAcquisitionTransaction: {Adyen.TerminalAPI.CardAcquisitionTransaction, :t},
      SaleData: {Adyen.TerminalAPI.SaleData, :t}
    ]
  end
end
