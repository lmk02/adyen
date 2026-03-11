defmodule Adyen.Checkout.V70.ListStoredPaymentMethodsResponse do
  @moduledoc """
  Provides struct and type for a ListStoredPaymentMethodsResponse
  """

  @type t :: %__MODULE__{
          merchantAccount: String.t() | nil,
          shopperReference: String.t() | nil,
          storedPaymentMethods: [Adyen.Checkout.V70.StoredPaymentMethodResource.t()] | nil
        }

  defstruct [:merchantAccount, :shopperReference, :storedPaymentMethods]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      merchantAccount: :string,
      shopperReference: :string,
      storedPaymentMethods: [{Adyen.Checkout.V70.StoredPaymentMethodResource, :t}]
    ]
  end
end
