defmodule Adyen.TerminalAPI.V1.StoredValueRequest do
  @moduledoc """
  Provides struct and type for a StoredValueRequest
  """

  @type t :: %__MODULE__{
          SaleData: Adyen.TerminalAPI.V1.SaleData.t(),
          StoredValueData: [Adyen.TerminalAPI.V1.StoredValueData.t()]
        }

  defstruct [:SaleData, :StoredValueData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      SaleData: {Adyen.TerminalAPI.V1.SaleData, :t},
      StoredValueData: [{Adyen.TerminalAPI.V1.StoredValueData, :t}]
    ]
  end
end
