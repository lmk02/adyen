defmodule Adyen.BalancePlatform.V1.WebData do
  @moduledoc """
  Provides struct and type for a WebData
  """

  @type t :: %__MODULE__{webAddress: String.t() | nil, webAddressId: String.t() | nil}

  defstruct [:webAddress, :webAddressId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [webAddress: :string, webAddressId: :string]
  end
end
