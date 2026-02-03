defmodule Adyen.BalancePlatform.MerchantsRestriction do
  @moduledoc """
  Provides struct and type for a MerchantsRestriction
  """

  alias Adyen.BalancePlatform.MerchantAcquirerPair

  @type t :: %__MODULE__{
          operation: String.t(),
          value: [MerchantAcquirerPair.t()] | nil
        }

  defstruct [:operation, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [operation: :string, value: [{MerchantAcquirerPair, :t}]]
  end
end
