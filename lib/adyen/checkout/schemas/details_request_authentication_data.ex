defmodule Adyen.Checkout.DetailsRequestAuthenticationData do
  @moduledoc """
  Provides struct and type for a DetailsRequestAuthenticationData
  """

  @type t :: %__MODULE__{authenticationOnly: boolean | nil}

  defstruct [:authenticationOnly]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [authenticationOnly: :boolean]
  end
end
