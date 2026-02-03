defmodule Adyen.Checkout.PaymentCancelRequest do
  @moduledoc """
  Provides struct and type for a PaymentCancelRequest
  """

  alias Adyen.Checkout.ApplicationInfo
  alias Adyen.Checkout.EnhancedSchemeData

  @type t :: %__MODULE__{
          applicationInfo: ApplicationInfo.t() | nil,
          enhancedSchemeData: EnhancedSchemeData.t() | nil,
          merchantAccount: String.t(),
          reference: String.t() | nil
        }

  defstruct [:applicationInfo, :enhancedSchemeData, :merchantAccount, :reference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      applicationInfo: {ApplicationInfo, :t},
      enhancedSchemeData: {EnhancedSchemeData, :t},
      merchantAccount: :string,
      reference: :string
    ]
  end
end
