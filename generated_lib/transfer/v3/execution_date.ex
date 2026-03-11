defmodule Adyen.Transfer.V3.ExecutionDate do
  @moduledoc """
  Provides struct and type for a ExecutionDate
  """

  @type t :: %__MODULE__{date: Date.t() | nil, timezone: String.t() | nil}

  defstruct [:date, :timezone]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [date: {:string, "date"}, timezone: :string]
  end
end
