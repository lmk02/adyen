defmodule Adyen.BalancePlatform.MerchantAcquirerPair do
  @moduledoc """
  Provides struct and type for a MerchantAcquirerPair
  """

  @type t :: %__MODULE__{acquirerId: String.t() | nil, merchantId: String.t() | nil}

  defstruct [:acquirerId, :merchantId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [acquirerId: :string, merchantId: :string]
  end
end
