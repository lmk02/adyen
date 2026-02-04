defmodule Adyen.Transfers.BankCategoryData do
  @moduledoc """
  Provides struct and type for a BankCategoryData
  """

  @type t :: %__MODULE__{priority: String.t() | nil, type: String.t() | nil}

  defstruct [:priority, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      priority: {:enum, ["crossBorder", "fast", "instant", "internal", "regular", "wire"]},
      type: {:const, "bank"}
    ]
  end
end
