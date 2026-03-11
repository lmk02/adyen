defmodule Adyen.TerminalAPI.MessageHeader do
  @moduledoc """
  Provides struct and type for a MessageHeader
  """

  @type t :: %__MODULE__{
          DeviceID: String.t() | nil,
          MessageCategory: String.t(),
          MessageClass: String.t(),
          MessageType: String.t(),
          POIID: String.t(),
          ProtocolVersion: String.t() | nil,
          SaleID: String.t(),
          ServiceID: String.t() | nil
        }

  defstruct [
    :DeviceID,
    :MessageCategory,
    :MessageClass,
    :MessageType,
    :POIID,
    :ProtocolVersion,
    :SaleID,
    :ServiceID
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      DeviceID: :string,
      MessageCategory:
        {:enum,
         [
           "Abort",
           "Admin",
           "BalanceInquiry",
           "CardAcquisition",
           "Diagnosis",
           "Display",
           "EnableService",
           "Event",
           "GetTotals",
           "Input",
           "InputUpdate",
           "Login",
           "Logout",
           "Loyalty",
           "None",
           "Payment",
           "Print",
           "Reconciliation",
           "Reversal",
           "StoredValue",
           "TransactionStatus"
         ]},
      MessageClass: {:enum, ["Device", "Event", "Service"]},
      MessageType: {:enum, ["Notification", "Request", "Response"]},
      POIID: :string,
      ProtocolVersion: :string,
      SaleID: :string,
      ServiceID: :string
    ]
  end
end
