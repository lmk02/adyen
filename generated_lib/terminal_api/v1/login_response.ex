defmodule Adyen.TerminalAPI.V1.LoginResponse do
  @moduledoc """
  Provides struct and type for a LoginResponse
  """

  @type t :: %__MODULE__{
          POISystemData: Adyen.TerminalAPI.V1.POISystemData.t() | nil,
          Response: Adyen.TerminalAPI.V1.Response.t(),
          TokenRequestStatus: boolean | nil
        }

  defstruct [:POISystemData, :Response, :TokenRequestStatus]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      POISystemData: {Adyen.TerminalAPI.V1.POISystemData, :t},
      Response: {Adyen.TerminalAPI.V1.Response, :t},
      TokenRequestStatus: :boolean
    ]
  end
end
