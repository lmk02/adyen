defmodule Adyen.A2APayments.V1.ProfileRegistrationResponse do
  @moduledoc """
  Provides struct and type for a ProfileRegistrationResponse
  """

  @type t :: %__MODULE__{redirectUrl: Adyen.A2APayments.V1.Href.t() | nil}

  defstruct [:redirectUrl]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [redirectUrl: {Adyen.A2APayments.V1.Href, :t}]
  end
end
