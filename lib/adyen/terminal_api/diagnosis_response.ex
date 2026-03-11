defmodule Adyen.TerminalAPI.DiagnosisResponse do
  @moduledoc """
  Provides struct and type for a DiagnosisResponse
  """

  @type t :: %__MODULE__{
          HostStatus: [Adyen.TerminalAPI.HostStatus.t()] | nil,
          POIStatus: Adyen.TerminalAPI.POIStatus.t() | nil,
          Response: Adyen.TerminalAPI.Response.t()
        }

  defstruct [:HostStatus, :POIStatus, :Response]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      HostStatus: [{Adyen.TerminalAPI.HostStatus, :t}],
      POIStatus: {Adyen.TerminalAPI.POIStatus, :t},
      Response: {Adyen.TerminalAPI.Response, :t}
    ]
  end
end
