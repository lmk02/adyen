defmodule Adyen.TerminalAPI.POIStatus do
  @moduledoc """
  Provides struct and type for a POIStatus
  """

  @type t :: %__MODULE__{
          CardReaderOKFlag: boolean | nil,
          CommunicationOKFlag: boolean | nil,
          FraudPreventionFlag: boolean | nil,
          GlobalStatus: String.t(),
          PEDOKFlag: boolean | nil,
          PrinterStatus: String.t() | nil,
          SecurityOKFlag: boolean | nil
        }

  defstruct [
    :CardReaderOKFlag,
    :CommunicationOKFlag,
    :FraudPreventionFlag,
    :GlobalStatus,
    :PEDOKFlag,
    :PrinterStatus,
    :SecurityOKFlag
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      CardReaderOKFlag: :boolean,
      CommunicationOKFlag: :boolean,
      FraudPreventionFlag: :boolean,
      GlobalStatus: {:enum, ["Busy", "Maintenance", "OK", "Unreachable"]},
      PEDOKFlag: :boolean,
      PrinterStatus: {:enum, ["NoPaper", "OK", "OutOfOrder", "PaperJam", "PaperLow"]},
      SecurityOKFlag: :boolean
    ]
  end
end
