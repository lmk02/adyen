defmodule Adyen.BalancePlatform.V2.BankAccountModel do
  @moduledoc """
  Provides struct and type for a BankAccountModel
  """

  @type t :: %__MODULE__{formFactor: String.t() | nil}

  defstruct [:formFactor]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [formFactor: {:enum, ["physical", "unknown", "virtual"]}]
  end
end
