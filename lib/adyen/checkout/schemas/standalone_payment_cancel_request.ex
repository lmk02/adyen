defmodule Adyen.Checkout.StandalonePaymentCancelRequest do
  @moduledoc """
  Provides struct and type for a StandalonePaymentCancelRequest
  """

  @type t :: %__MODULE__{
          applicationInfo: Adyen.Checkout.ApplicationInfo.t() | nil,
          enhancedSchemeData: Adyen.Checkout.EnhancedSchemeData.t() | nil,
          merchantAccount: String.t(),
          paymentReference: String.t(),
          reference: String.t() | nil
        }

  defstruct [
    :applicationInfo,
    :enhancedSchemeData,
    :merchantAccount,
    :paymentReference,
    :reference
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      applicationInfo: {Adyen.Checkout.ApplicationInfo, :t},
      enhancedSchemeData: {Adyen.Checkout.EnhancedSchemeData, :t},
      merchantAccount: :string,
      paymentReference: :string,
      reference: :string
    ]
  end
end
