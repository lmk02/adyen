defmodule Adyen.TerminalAPI.MessageReference do
  @moduledoc """
  Provides struct and type for a MessageReference
  """

  @type t :: %__MODULE__{
          DeviceID: String.t() | nil,
          MessageCategory: String.t() | nil,
          POIID: String.t() | nil,
          SaleID: String.t() | nil,
          ServiceID: String.t() | nil
        }

  defstruct [:DeviceID, :MessageCategory, :POIID, :SaleID, :ServiceID]

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
      POIID: :string,
      SaleID: :string,
      ServiceID: :string
    ]
  end
end
