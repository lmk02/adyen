defmodule Adyen.Checkout.ListStoredPaymentMethodsResponse do
  @moduledoc """
  Provides struct and type for a ListStoredPaymentMethodsResponse
  """

  alias Adyen.Checkout.StoredPaymentMethodResource

  @type t :: %__MODULE__{
          merchantAccount: String.t() | nil,
          shopperReference: String.t() | nil,
          storedPaymentMethods: [StoredPaymentMethodResource.t()] | nil
        }

  defstruct [:merchantAccount, :shopperReference, :storedPaymentMethods]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      merchantAccount: :string,
      shopperReference: :string,
      storedPaymentMethods: [{StoredPaymentMethodResource, :t}]
    ]
  end
end
