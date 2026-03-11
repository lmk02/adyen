defmodule Adyen.TerminalAPI.V1.DiagnosisResponse do
  @moduledoc """
  Provides struct and type for a DiagnosisResponse
  """

  @type t :: %__MODULE__{
          HostStatus: [Adyen.TerminalAPI.V1.HostStatus.t()] | nil,
          POIStatus: Adyen.TerminalAPI.V1.POIStatus.t() | nil,
          Response: Adyen.TerminalAPI.V1.Response.t()
        }

  defstruct [:HostStatus, :POIStatus, :Response]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      HostStatus: [{Adyen.TerminalAPI.V1.HostStatus, :t}],
      POIStatus: {Adyen.TerminalAPI.V1.POIStatus, :t},
      Response: {Adyen.TerminalAPI.V1.Response, :t}
    ]
  end
end
