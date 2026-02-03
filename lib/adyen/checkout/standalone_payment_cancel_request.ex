defmodule Adyen.Checkout.StandalonePaymentCancelRequest do
  @moduledoc """
  Provides struct and type for a StandalonePaymentCancelRequest
  """

  alias Adyen.Checkout.ApplicationInfo
  alias Adyen.Checkout.EnhancedSchemeData

  @type t :: %__MODULE__{
          applicationInfo: ApplicationInfo.t() | nil,
          enhancedSchemeData: EnhancedSchemeData.t() | nil,
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
      applicationInfo: {ApplicationInfo, :t},
      enhancedSchemeData: {EnhancedSchemeData, :t},
      merchantAccount: :string,
      paymentReference: :string,
      reference: :string
    ]
  end
end
