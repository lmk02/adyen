defmodule Adyen.TerminalAPI.V1.LoginRequest do
  @moduledoc """
  Provides struct and type for a LoginRequest
  """

  @type t :: %__MODULE__{
          CustomerOrderReq: [String.t()] | nil,
          DateTime: DateTime.t(),
          OperatorID: String.t() | nil,
          OperatorLanguage: String.t(),
          POISerialNumber: String.t() | nil,
          SaleSoftware: Adyen.TerminalAPI.V1.SaleSoftware.t(),
          SaleTerminalData: Adyen.TerminalAPI.V1.SaleTerminalData.t() | nil,
          ShiftNumber: String.t() | nil,
          TokenRequestedType: String.t() | nil,
          TrainingModeFlag: boolean | nil
        }

  defstruct [
    :CustomerOrderReq,
    :DateTime,
    :OperatorID,
    :OperatorLanguage,
    :POISerialNumber,
    :SaleSoftware,
    :SaleTerminalData,
    :ShiftNumber,
    :TokenRequestedType,
    :TrainingModeFlag
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      CustomerOrderReq: [enum: ["Both", "Closed", "Open"]],
      DateTime: {:string, "date-time"},
      OperatorID: :string,
      OperatorLanguage: :string,
      POISerialNumber: :string,
      SaleSoftware: {Adyen.TerminalAPI.V1.SaleSoftware, :t},
      SaleTerminalData: {Adyen.TerminalAPI.V1.SaleTerminalData, :t},
      ShiftNumber: :string,
      TokenRequestedType: {:enum, ["Customer", "Transaction"]},
      TrainingModeFlag: :boolean
    ]
  end
end
