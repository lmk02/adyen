defmodule Adyen.BalancePlatform.V2.AuthorisedCardUsers do
  @moduledoc """
  Provides struct and type for a AuthorisedCardUsers
  """

  @type t :: %__MODULE__{legalEntityIds: [String.t()] | nil}

  defstruct [:legalEntityIds]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [legalEntityIds: [:string]]
  end
end
