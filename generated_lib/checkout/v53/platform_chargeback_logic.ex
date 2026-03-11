defmodule Adyen.Checkout.V53.PlatformChargebackLogic do
  @moduledoc """
  Provides struct and type for a PlatformChargebackLogic
  """

  @type t :: %__MODULE__{
          behavior: String.t() | nil,
          costAllocationAccount: String.t() | nil,
          targetAccount: String.t() | nil
        }

  defstruct [:behavior, :costAllocationAccount, :targetAccount]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      behavior:
        {:enum,
         ["deductAccordingToSplitRatio", "deductFromLiableAccount", "deductFromOneBalanceAccount"]},
      costAllocationAccount: :string,
      targetAccount: :string
    ]
  end
end
