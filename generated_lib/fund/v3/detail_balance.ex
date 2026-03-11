defmodule Adyen.Fund.V3.DetailBalance do
  @moduledoc """
  Provides struct and type for a DetailBalance
  """

  @type t :: %__MODULE__{
          balance: [Adyen.Fund.V3.AmountWrapper.t()] | nil,
          pendingBalance: [Adyen.Fund.V3.AmountWrapper.t()] | nil
        }

  defstruct [:balance, :pendingBalance]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balance: [{Adyen.Fund.V3.AmountWrapper, :t}],
      pendingBalance: [{Adyen.Fund.V3.AmountWrapper, :t}]
    ]
  end
end
