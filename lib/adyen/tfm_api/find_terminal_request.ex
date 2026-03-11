defmodule Adyen.TfmAPI.FindTerminalRequest do
  @moduledoc """
  Provides struct and type for a FindTerminalRequest
  """

  @type t :: %__MODULE__{terminal: String.t()}

  defstruct [:terminal]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [terminal: :string]
  end
end
