defmodule Adyen.Recurring.V40.Name do
  @moduledoc """
  Provides struct and type for a Name
  """

  @type t :: %__MODULE__{firstName: String.t(), lastName: String.t()}

  defstruct [:firstName, :lastName]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [firstName: :string, lastName: :string]
  end
end
