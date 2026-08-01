defmodule Adyen.A2APayments.V1.IdealPaymentDetailsRequest do
  @moduledoc """
  Provides struct and type for a IdealPaymentDetailsRequest
  """

  @type t :: %__MODULE__{method: String.t(), payload: String.t(), source: String.t()}

  defstruct [:method, :payload, :source]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      method: {:const, "ideal"},
      payload: :string,
      source: {:enum, ["redirect", "qr", "pushNotification"]}
    ]
  end
end
