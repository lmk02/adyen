defmodule Adyen.TerminalAPI.V1.SensitiveCardData do
  @moduledoc """
  Provides struct and type for a SensitiveCardData
  """

  @type t :: %__MODULE__{
          CardSeqNumb: integer | nil,
          ExpiryDate: integer | nil,
          PAN: integer | nil,
          TrackData: [Adyen.TerminalAPI.V1.TrackData.t()] | nil
        }

  defstruct [:CardSeqNumb, :ExpiryDate, :PAN, :TrackData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      CardSeqNumb: :integer,
      ExpiryDate: :integer,
      PAN: :integer,
      TrackData: [{Adyen.TerminalAPI.V1.TrackData, :t}]
    ]
  end
end
