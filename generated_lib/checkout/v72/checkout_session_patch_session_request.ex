defmodule Adyen.Checkout.V72.CheckoutSessionPatchSessionRequest do
  @moduledoc """
  Provides struct and type for a CheckoutSessionPatchSessionRequest
  """

  @type t :: %__MODULE__{
          amount: Adyen.Checkout.V72.SessionAmountUpdate.t(),
          payable: boolean | nil,
          sessionData: String.t()
        }

  defstruct [:amount, :payable, :sessionData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.Checkout.V72.SessionAmountUpdate, :t},
      payable: :boolean,
      sessionData: :string
    ]
  end
end
