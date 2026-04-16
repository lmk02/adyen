defmodule Adyen.Checkout.V72.PaymentCancelRequest do
  @moduledoc """
  Provides struct and type for a PaymentCancelRequest
  """

  @type t :: %__MODULE__{
          applicationInfo: Adyen.Checkout.V72.ApplicationInfo.t() | nil,
          merchantAccount: String.t(),
          reference: String.t() | nil
        }

  defstruct [:applicationInfo, :merchantAccount, :reference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      applicationInfo: {Adyen.Checkout.V72.ApplicationInfo, :t},
      merchantAccount: :string,
      reference: :string
    ]
  end
end
