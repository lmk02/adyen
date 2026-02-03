defmodule Adyen.BalancePlatform.MerchantNamesRestriction do
  @moduledoc """
  Provides struct and type for a MerchantNamesRestriction
  """

  alias Adyen.BalancePlatform.StringMatch

  @type t :: %__MODULE__{
          operation: String.t(),
          value: [StringMatch.t()] | nil
        }

  defstruct [:operation, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [operation: :string, value: [{StringMatch, :t}]]
  end
end
