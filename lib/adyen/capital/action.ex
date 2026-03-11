defmodule Adyen.Capital.Action do
  @moduledoc """
  Provides struct and type for a Action
  """

  @type t :: %__MODULE__{actionCode: String.t(), resolved: boolean}

  defstruct [:actionCode, :resolved]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [actionCode: :string, resolved: :boolean]
  end
end
