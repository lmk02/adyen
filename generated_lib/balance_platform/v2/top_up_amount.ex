defmodule Adyen.BalancePlatform.V2.TopUpAmount do
  @moduledoc """
  Provides struct and type for a TopUpAmount
  """

  @type t :: %__MODULE__{
          fixed: Adyen.BalancePlatform.V2.AmountDTO.t() | nil,
          target: Adyen.BalancePlatform.V2.AmountDTO.t() | nil
        }

  defstruct [:fixed, :target]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      fixed: {Adyen.BalancePlatform.V2.AmountDTO, :t},
      target: {Adyen.BalancePlatform.V2.AmountDTO, :t}
    ]
  end
end
