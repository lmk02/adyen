defmodule Adyen.TerminalAPI.CapturedSignature do
  @moduledoc """
  Provides struct and type for a CapturedSignature
  """

  @type t :: %__MODULE__{
          AreaSize: Adyen.TerminalAPI.AreaSize.t() | nil,
          SignaturePoint: [Adyen.TerminalAPI.Point.t()] | nil
        }

  defstruct [:AreaSize, :SignaturePoint]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [AreaSize: {Adyen.TerminalAPI.AreaSize, :t}, SignaturePoint: [{Adyen.TerminalAPI.Point, :t}]]
  end
end
