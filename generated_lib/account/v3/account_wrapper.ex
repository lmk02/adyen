defmodule Adyen.Account.V3.AccountWrapper do
  @moduledoc """
  Provides struct and type for a AccountWrapper
  """

  @type t :: %__MODULE__{Account: Adyen.Account.V3.Account.t() | nil}

  defstruct [:Account]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [Account: {Adyen.Account.V3.Account, :t}]
  end
end
