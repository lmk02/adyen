defmodule Adyen.Management.V3.SplitDcc do
  @moduledoc """
  Provides struct and type for a SplitDcc
  """

  @type t :: %__MODULE__{accountHolderPercentage: integer | nil}

  defstruct [:accountHolderPercentage]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountHolderPercentage: {:integer, "int64"}]
  end
end
