defmodule Adyen.Checkout.V67.ValidateShopperIdResponse do
  @moduledoc """
  Provides struct and type for a ValidateShopperIdResponse
  """

  @type t :: %__MODULE__{reason: String.t() | nil, result: String.t() | nil}

  defstruct [:reason, :result]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [reason: :string, result: {:enum, ["VALID", "INVALID", "UNKNOWN"]}]
  end
end
