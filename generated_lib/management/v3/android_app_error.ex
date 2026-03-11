defmodule Adyen.Management.V3.AndroidAppError do
  @moduledoc """
  Provides struct and type for a AndroidAppError
  """

  @type t :: %__MODULE__{errorCode: String.t() | nil, terminalModels: [String.t()] | nil}

  defstruct [:errorCode, :terminalModels]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [errorCode: :string, terminalModels: [:string]]
  end
end
