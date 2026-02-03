defmodule Adyen.BalancePlatform.USInternationalAchAddressRequirement do
  @moduledoc """
  Provides struct and type for a USInternationalAchAddressRequirement
  """

  @type t :: %__MODULE__{description: String.t() | nil, type: String.t()}

  defstruct [:description, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [description: :string, type: {:const, "usInternationalAchAddressRequirement"}]
  end
end
