defmodule Adyen.Checkout.V68.UtilityRequest do
  @moduledoc """
  Provides struct and type for a UtilityRequest
  """

  @type t :: %__MODULE__{originDomains: [String.t()]}

  defstruct [:originDomains]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [originDomains: [:string]]
  end
end
