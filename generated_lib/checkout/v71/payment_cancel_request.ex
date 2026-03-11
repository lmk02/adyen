defmodule Adyen.Checkout.V71.PaymentCancelRequest do
  @moduledoc """
  Provides struct and type for a PaymentCancelRequest
  """

  @type t :: %__MODULE__{
          applicationInfo: Adyen.Checkout.V71.ApplicationInfo.t() | nil,
          enhancedSchemeData: Adyen.Checkout.V71.EnhancedSchemeData.t() | nil,
          merchantAccount: String.t(),
          reference: String.t() | nil
        }

  defstruct [:applicationInfo, :enhancedSchemeData, :merchantAccount, :reference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      applicationInfo: {Adyen.Checkout.V71.ApplicationInfo, :t},
      enhancedSchemeData: {Adyen.Checkout.V71.EnhancedSchemeData, :t},
      merchantAccount: :string,
      reference: :string
    ]
  end
end
