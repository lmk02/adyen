defmodule Adyen.TerminalAPI.PredefinedContent do
  @moduledoc """
  Provides struct and type for a PredefinedContent
  """

  @type t :: %__MODULE__{Language: String.t() | nil, ReferenceID: String.t()}

  defstruct [:Language, :ReferenceID]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [Language: :string, ReferenceID: :string]
  end
end
