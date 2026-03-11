defmodule Adyen.Account.V3.AccountEventWrapper do
  @moduledoc """
  Provides struct and type for a AccountEventWrapper
  """

  @type t :: %__MODULE__{AccountEvent: Adyen.Account.V3.AccountEvent.t() | nil}

  defstruct [:AccountEvent]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [AccountEvent: {Adyen.Account.V3.AccountEvent, :t}]
  end
end
