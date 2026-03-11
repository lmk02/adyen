defmodule Adyen.Transaction.V1.InvalidField do
  @moduledoc """
  Provides struct and type for a InvalidField
  """

  @type t :: %__MODULE__{message: String.t(), name: String.t(), value: String.t()}

  defstruct [:message, :name, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [message: :string, name: :string, value: :string]
  end
end
