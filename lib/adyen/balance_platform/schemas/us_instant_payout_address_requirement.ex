defmodule Adyen.BalancePlatform.USInstantPayoutAddressRequirement do
  @moduledoc """
  Provides struct and type for a USInstantPayoutAddressRequirement
  """

  @type t :: %__MODULE__{description: String.t() | nil, type: String.t()}

  defstruct [:description, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [description: :string, type: {:const, "usInstantPayoutAddressRequirement"}]
  end
end
