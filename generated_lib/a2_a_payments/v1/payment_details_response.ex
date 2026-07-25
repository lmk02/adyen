defmodule Adyen.A2APayments.V1.PaymentDetailsResponse do
  @moduledoc """
  Provides struct and type for a PaymentDetailsResponse
  """

  @type t :: %__MODULE__{details: Adyen.A2APayments.V1.PaymentDetails.t(), token: String.t()}

  defstruct [:details, :token]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [details: {Adyen.A2APayments.V1.PaymentDetails, :t}, token: :string]
  end
end
