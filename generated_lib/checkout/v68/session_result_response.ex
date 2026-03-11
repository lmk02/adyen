defmodule Adyen.Checkout.V68.SessionResultResponse do
  @moduledoc """
  Provides struct and type for a SessionResultResponse
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          id: String.t() | nil,
          payments: [Adyen.Checkout.V68.Payment.t()] | nil,
          reference: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:additionalData, :id, :payments, :reference, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additionalData: :map,
      id: :string,
      payments: [{Adyen.Checkout.V68.Payment, :t}],
      reference: :string,
      status: {:enum, ["active", "canceled", "completed", "expired", "paymentPending", "refused"]}
    ]
  end
end
