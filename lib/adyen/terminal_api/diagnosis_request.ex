defmodule Adyen.TerminalAPI.DiagnosisRequest do
  @moduledoc """
  Provides struct and type for a DiagnosisRequest
  """

  @type t :: %__MODULE__{
          AcquirerID: [integer] | nil,
          HostDiagnosisFlag: boolean | nil,
          POIID: String.t() | nil
        }

  defstruct [:AcquirerID, :HostDiagnosisFlag, :POIID]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [AcquirerID: [:integer], HostDiagnosisFlag: :boolean, POIID: :string]
  end
end
