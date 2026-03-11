defmodule Adyen.Checkout.V52.StandalonePaymentCancelRequest do
  @moduledoc """
  Provides struct and type for a StandalonePaymentCancelRequest
  """

  @type t :: %__MODULE__{
          applicationInfo: Adyen.Checkout.V52.ApplicationInfo.t() | nil,
          merchantAccount: String.t(),
          paymentReference: String.t(),
          reference: String.t() | nil
        }

  defstruct [:applicationInfo, :merchantAccount, :paymentReference, :reference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      applicationInfo: {Adyen.Checkout.V52.ApplicationInfo, :t},
      merchantAccount: :string,
      paymentReference: :string,
      reference: :string
    ]
  end
end
