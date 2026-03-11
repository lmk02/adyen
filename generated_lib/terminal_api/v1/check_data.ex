defmodule Adyen.TerminalAPI.V1.CheckData do
  @moduledoc """
  Provides struct and type for a CheckData
  """

  @type t :: %__MODULE__{
          AccountNumber: String.t() | nil,
          BankID: String.t() | nil,
          CheckCardNumber: String.t() | nil,
          CheckNumber: String.t() | nil,
          Country: String.t() | nil,
          TrackData: Adyen.TerminalAPI.V1.TrackData.t() | nil,
          TypeCode: String.t() | nil
        }

  defstruct [
    :AccountNumber,
    :BankID,
    :CheckCardNumber,
    :CheckNumber,
    :Country,
    :TrackData,
    :TypeCode
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      AccountNumber: :string,
      BankID: :string,
      CheckCardNumber: :string,
      CheckNumber: :string,
      Country: :string,
      TrackData: {Adyen.TerminalAPI.V1.TrackData, :t},
      TypeCode: {:enum, ["Company", "Personal"]}
    ]
  end
end
