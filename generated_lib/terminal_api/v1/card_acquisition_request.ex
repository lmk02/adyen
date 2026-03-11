defmodule Adyen.TerminalAPI.V1.CardAcquisitionRequest do
  @moduledoc """
  Provides struct and type for a CardAcquisitionRequest
  """

  @type t :: %__MODULE__{
          CardAcquisitionTransaction: Adyen.TerminalAPI.V1.CardAcquisitionTransaction.t(),
          SaleData: Adyen.TerminalAPI.V1.SaleData.t()
        }

  defstruct [:CardAcquisitionTransaction, :SaleData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      CardAcquisitionTransaction: {Adyen.TerminalAPI.V1.CardAcquisitionTransaction, :t},
      SaleData: {Adyen.TerminalAPI.V1.SaleData, :t}
    ]
  end
end
