defmodule Adyen.TerminalAPI.OutputBarcode do
  @moduledoc """
  Provides struct and type for a OutputBarcode
  """

  @type t :: %__MODULE__{BarcodeValue: String.t()}

  defstruct [:BarcodeValue]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [BarcodeValue: :string]
  end
end
