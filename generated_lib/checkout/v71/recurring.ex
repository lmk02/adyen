defmodule Adyen.Checkout.V71.Recurring do
  @moduledoc """
  Provides API endpoints related to recurring
  """

  @default_client Adyen.Client

  @doc """
  Delete a token for stored payment details

  Deletes the token identified in the path. The token can no longer be used with payment requests.

  ## Options

    * `shopperReference`: Your reference to uniquely identify this shopper, for example user ID or account ID. Minimum length: 3 characters.
      > Your reference must not include personally identifiable information (PII), for example name or email address.
    * `merchantAccount`: Your merchant account.

  """
  @spec delete_stored_payment_methods_stored_payment_method_id(
          storedPaymentMethodId :: String.t(),
          opts :: keyword
        ) :: :ok | :error
  def delete_stored_payment_methods_stored_payment_method_id(storedPaymentMethodId, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:merchantAccount, :shopperReference])

    client.request(%{
      args: [storedPaymentMethodId: storedPaymentMethodId],
      call:
        {Adyen.Checkout.V71.Recurring, :delete_stored_payment_methods_stored_payment_method_id},
      url: "/storedPaymentMethods/#{storedPaymentMethodId}",
      method: :delete,
      query: query,
      response: [{204, :null}],
      opts: opts
    })
  end

  @doc """
  Get tokens for stored payment details

  Lists the tokens for stored payment details for the shopper identified in the path, if there are any available. The token ID can be used with payment requests for the shopper's payment. A summary of the stored details is included.


  ## Options

    * `shopperReference`: Your reference to uniquely identify this shopper, for example user ID or account ID. Minimum length: 3 characters.
      > Your reference must not include personally identifiable information (PII), for example name or email address.
    * `merchantAccount`: Your merchant account.

  """
  @spec get_stored_payment_methods(opts :: keyword) ::
          {:ok, Adyen.Checkout.V71.ListStoredPaymentMethodsResponse.t()} | :error
  def get_stored_payment_methods(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:merchantAccount, :shopperReference])

    client.request(%{
      args: [],
      call: {Adyen.Checkout.V71.Recurring, :get_stored_payment_methods},
      url: "/storedPaymentMethods",
      method: :get,
      query: query,
      response: [{200, {Adyen.Checkout.V71.ListStoredPaymentMethodsResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Forward stored payment details

  Forwards the payment details you stored with Adyen to a third-party that you specify and returns the response from the third-party. Supports forwarding stored card details or [network tokens](https://docs.adyen.com/online-payments/network-tokenization). For more information, see [Forward stored payment details](https://docs.adyen.com/online-payments/tokenization/forward-payment-details).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_forward(body :: Adyen.Checkout.V71.CheckoutForwardRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Checkout.V71.CheckoutForwardResponse.t()} | :error
  def post_forward(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Checkout.V71.Recurring, :post_forward},
      url: "/forward",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Checkout.V71.CheckoutForwardRequest, :t}}],
      response: [{200, {Adyen.Checkout.V71.CheckoutForwardResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Create a token to store payment details

  Creates a token to store the shopper's payment details. This token can be used for the shopper's future payments.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_stored_payment_methods(
          body :: Adyen.Checkout.V71.StoredPaymentMethodRequest.t(),
          opts :: keyword
        ) :: {:ok, Adyen.Checkout.V71.StoredPaymentMethodResource.t()} | :error
  def post_stored_payment_methods(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Checkout.V71.Recurring, :post_stored_payment_methods},
      url: "/storedPaymentMethods",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Checkout.V71.StoredPaymentMethodRequest, :t}}],
      response: [{201, {Adyen.Checkout.V71.StoredPaymentMethodResource, :t}}],
      opts: opts
    })
  end

  @type t :: %__MODULE__{
          contract: String.t() | nil,
          recurringDetailName: String.t() | nil,
          recurringExpiry: DateTime.t() | nil,
          recurringFrequency: String.t() | nil,
          tokenService: String.t() | nil
        }

  defstruct [
    :contract,
    :recurringDetailName,
    :recurringExpiry,
    :recurringFrequency,
    :tokenService
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      contract: {:enum, ["ONECLICK", "ONECLICK,RECURRING", "RECURRING", "PAYOUT", "EXTERNAL"]},
      recurringDetailName: :string,
      recurringExpiry: {:string, "date-time"},
      recurringFrequency: :string,
      tokenService:
        {:enum, ["VISATOKENSERVICE", "MCTOKENSERVICE", "AMEXTOKENSERVICE", "TOKEN_SHARING"]}
    ]
  end
end
