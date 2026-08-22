defmodule Adyen.BalancePlatform.V2.PatchableTopUpAmount do
  @moduledoc """
  Provides struct and type for a PatchableTopUpAmount
  """

  @type t :: %__MODULE__{
          fixed: Adyen.BalancePlatform.V2.PatchableAmountDTO.t() | nil,
          target: Adyen.BalancePlatform.V2.PatchableAmountDTO.t() | nil
        }

  defstruct [:fixed, :target]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      fixed: {:union, [{Adyen.BalancePlatform.V2.PatchableAmountDTO, :t}, :null]},
      target: {:union, [{Adyen.BalancePlatform.V2.PatchableAmountDTO, :t}, :null]}
    ]
  end
end
