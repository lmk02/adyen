defmodule Adyen.TerminalAPI.StoredValueRequest do
  @moduledoc """
  Provides struct and type for a StoredValueRequest
  """

  @type t :: %__MODULE__{
          SaleData: Adyen.TerminalAPI.SaleData.t(),
          StoredValueData: [Adyen.TerminalAPI.StoredValueData.t()]
        }

  defstruct [:SaleData, :StoredValueData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      SaleData: {Adyen.TerminalAPI.SaleData, :t},
      StoredValueData: [{Adyen.TerminalAPI.StoredValueData, :t}]
    ]
  end
end
