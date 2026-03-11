defmodule Adyen.TerminalAPI.SensitiveMobileData do
  @moduledoc """
  Provides struct and type for a SensitiveMobileData
  """

  @type t :: %__MODULE__{IMEI: integer | nil, IMSI: integer | nil, MSISDN: integer}

  defstruct [:IMEI, :IMSI, :MSISDN]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [IMEI: :integer, IMSI: :integer, MSISDN: :integer]
  end
end
