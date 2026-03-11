defmodule Adyen.TerminalAPI.V1.EnableServiceRequest do
  @moduledoc """
  Provides struct and type for a EnableServiceRequest
  """

  @type t :: %__MODULE__{
          DisplayOutput: Adyen.TerminalAPI.V1.DisplayOutput.t() | nil,
          ServicesEnabled: [String.t()] | nil,
          TransactionAction: String.t()
        }

  defstruct [:DisplayOutput, :ServicesEnabled, :TransactionAction]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      DisplayOutput: {Adyen.TerminalAPI.V1.DisplayOutput, :t},
      ServicesEnabled: [enum: ["CardAcquisition", "Loyalty", "Payment"]],
      TransactionAction: {:enum, ["AbortTransaction", "StartTransaction"]}
    ]
  end
end
