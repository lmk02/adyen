defmodule Adyen.A2APayments.V1.ConfirmPaymentResponse do
  @moduledoc """
  Provides struct and type for a ConfirmPaymentResponse
  """

  @type t :: %__MODULE__{links: Adyen.A2APayments.V1.Links.t()}

  defstruct [:links]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [links: {Adyen.A2APayments.V1.Links, :t}]
  end
end
