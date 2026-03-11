defmodule Adyen.Checkout.V70.CheckoutDelegatedAuthenticationAction do
  @moduledoc """
  Provides struct and type for a CheckoutDelegatedAuthenticationAction
  """

  @type t :: %__MODULE__{
          authorisationToken: String.t() | nil,
          paymentData: String.t() | nil,
          paymentMethodType: String.t() | nil,
          token: String.t() | nil,
          type: String.t(),
          url: String.t() | nil
        }

  defstruct [:authorisationToken, :paymentData, :paymentMethodType, :token, :type, :url]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      authorisationToken: :string,
      paymentData: :string,
      paymentMethodType: :string,
      token: :string,
      type: {:const, "delegatedAuthentication"},
      url: :string
    ]
  end
end
