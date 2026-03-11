defmodule Adyen.Management.V3.AffirmInfo do
  @moduledoc """
  Provides struct and type for a AffirmInfo
  """

  @type t :: %__MODULE__{pricePlan: String.t() | nil, supportEmail: String.t()}

  defstruct [:pricePlan, :supportEmail]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [pricePlan: {:enum, ["BRONZE", "SILVER", "GOLD"]}, supportEmail: :string]
  end
end
