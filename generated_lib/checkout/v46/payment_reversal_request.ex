defmodule Adyen.Checkout.V46.PaymentReversalRequest do
  @moduledoc """
  Provides struct and type for a PaymentReversalRequest
  """

  @type t :: %__MODULE__{
          applicationInfo: Adyen.Checkout.V46.ApplicationInfo.t() | nil,
          merchantAccount: String.t(),
          reference: String.t() | nil
        }

  defstruct [:applicationInfo, :merchantAccount, :reference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      applicationInfo: {Adyen.Checkout.V46.ApplicationInfo, :t},
      merchantAccount: :string,
      reference: :string
    ]
  end
end
