defmodule Adyen.BalancePlatform.PaymentInstruments do
  @moduledoc """
  Provides API endpoints related to payment instruments
  """

  alias Adyen.BalancePlatform.ListNetworkTokensResponse
  alias Adyen.BalancePlatform.NetworkTokenActivationDataRequest
  alias Adyen.BalancePlatform.NetworkTokenActivationDataResponse
  alias Adyen.BalancePlatform.PaymentInstrument
  alias Adyen.BalancePlatform.PaymentInstrumentInfo
  alias Adyen.BalancePlatform.PaymentInstrumentRevealInfo
  alias Adyen.BalancePlatform.PaymentInstrumentRevealRequest
  alias Adyen.BalancePlatform.PaymentInstrumentRevealResponse
  alias Adyen.BalancePlatform.PaymentInstruments
  alias Adyen.BalancePlatform.PaymentInstrumentUpdateRequest
  alias Adyen.BalancePlatform.RestServiceError
  alias Adyen.BalancePlatform.TransactionRulesResponse
  alias Adyen.BalancePlatform.UpdatePaymentInstrument

  @default_client Adyen.Client

  @doc """
  Get a payment instrument

  Returns the details of a payment instrument.
  """
  @spec get_payment_instrument(id :: String.t(), opts :: keyword) ::
          {:ok, PaymentInstrument.t()}
          | {:error, RestServiceError.t()}
  def get_payment_instrument(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {PaymentInstruments, :get_payment_instrument},
      url: "/paymentInstruments/#{id}",
      method: :get,
      response: [
        {200, {PaymentInstrument, :t}},
        {400, {RestServiceError, :t}},
        {401, {RestServiceError, :t}},
        {403, {RestServiceError, :t}},
        {422, {RestServiceError, :t}},
        {500, {RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get network token activation data

  Get the network token activation data for a payment instrument.
  """
  @spec get_payment_instrument_network_token_activation_data(
          id :: String.t(),
          opts :: keyword
        ) ::
          {:ok, NetworkTokenActivationDataResponse.t()}
          | {:error, RestServiceError.t()}
  def get_payment_instrument_network_token_activation_data(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {PaymentInstruments, :get_payment_instrument_network_token_activation_data},
      url: "/paymentInstruments/#{id}/networkTokenActivationData",
      method: :get,
      response: [
        {200, {NetworkTokenActivationDataResponse, :t}},
        {400, {RestServiceError, :t}},
        {401, {RestServiceError, :t}},
        {403, {RestServiceError, :t}},
        {422, {RestServiceError, :t}},
        {500, {RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  List network tokens

  List the network tokens connected to a payment instrument.
  """
  @spec get_payment_instrument_network_tokens(id :: String.t(), opts :: keyword) ::
          {:ok, ListNetworkTokensResponse.t()}
          | {:error, RestServiceError.t()}
  def get_payment_instrument_network_tokens(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {PaymentInstruments, :get_payment_instrument_network_tokens},
      url: "/paymentInstruments/#{id}/networkTokens",
      method: :get,
      response: [
        {200, {ListNetworkTokensResponse, :t}},
        {400, {RestServiceError, :t}},
        {401, {RestServiceError, :t}},
        {403, {RestServiceError, :t}},
        {422, {RestServiceError, :t}},
        {500, {RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get the PAN of a payment instrument

  Returns the primary account number (PAN) of a payment instrument.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/issuing/manage-access/api-credentials-web-service#api-permissions):

  * Balance Platform BCL PCI role
  """
  @spec get_payment_instrument_reveal(id :: String.t(), opts :: keyword) ::
          {:ok, PaymentInstrumentRevealInfo.t()}
          | {:error, RestServiceError.t()}
  def get_payment_instrument_reveal(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {PaymentInstruments, :get_payment_instrument_reveal},
      url: "/paymentInstruments/#{id}/reveal",
      method: :get,
      response: [
        {200, {PaymentInstrumentRevealInfo, :t}},
        {400, {RestServiceError, :t}},
        {401, {RestServiceError, :t}},
        {403, {RestServiceError, :t}},
        {422, {RestServiceError, :t}},
        {500, {RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get all transaction rules for a payment instrument

  Returns a list of transaction rules associated with a payment instrument.
  """
  @spec get_payment_instrument_transaction_rules(id :: String.t(), opts :: keyword) ::
          {:ok, TransactionRulesResponse.t()}
          | {:error, RestServiceError.t()}
  def get_payment_instrument_transaction_rules(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {PaymentInstruments, :get_payment_instrument_transaction_rules},
      url: "/paymentInstruments/#{id}/transactionRules",
      method: :get,
      response: [
        {200, {TransactionRulesResponse, :t}},
        {400, {RestServiceError, :t}},
        {401, {RestServiceError, :t}},
        {403, {RestServiceError, :t}},
        {422, {RestServiceError, :t}},
        {500, {RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update a payment instrument

  Updates a payment instrument. Once a payment instrument is already active, you can only update its status. However, for cards created with **inactive** status, you can still update the balance account associated with the card.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec update_payment_instrument(
          id :: String.t(),
          body :: PaymentInstrumentUpdateRequest.t(),
          opts :: keyword
        ) ::
          {:ok, UpdatePaymentInstrument.t()}
          | {:error, RestServiceError.t()}
  def update_payment_instrument(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call: {PaymentInstruments, :update_payment_instrument},
      url: "/paymentInstruments/#{id}",
      body: body,
      method: :patch,
      request: [{"application/json", {PaymentInstrumentUpdateRequest, :t}}],
      response: [
        {200, {UpdatePaymentInstrument, :t}},
        {400, {RestServiceError, :t}},
        {401, {RestServiceError, :t}},
        {403, {RestServiceError, :t}},
        {422, {RestServiceError, :t}},
        {500, {RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create a payment instrument

  Creates a payment instrument to issue a physical card, a virtual card, or a business account to your user.

   For more information, refer to [Issue cards](https://docs.adyen.com/issuing/create-cards) or [Issue business accounts](https://docs.adyen.com/platforms/business-accounts).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec create_payment_instruments(
          body :: PaymentInstrumentInfo.t(),
          opts :: keyword
        ) ::
          {:ok, PaymentInstrument.t()}
          | {:error, RestServiceError.t()}
  def create_payment_instruments(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {PaymentInstruments, :create_payment_instruments},
      url: "/paymentInstruments",
      body: body,
      method: :post,
      request: [{"application/json", {PaymentInstrumentInfo, :t}}],
      response: [
        {200, {PaymentInstrument, :t}},
        {400, {RestServiceError, :t}},
        {401, {RestServiceError, :t}},
        {403, {RestServiceError, :t}},
        {422, {RestServiceError, :t}},
        {500, {RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create network token provisioning data

  Create provisioning data for a network token. Use the provisioning data to add a user's payment instrument to their digital wallet.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec create_payment_instrument_network_token_activation_data(
          id :: String.t(),
          body :: NetworkTokenActivationDataRequest.t(),
          opts :: keyword
        ) ::
          {:ok, NetworkTokenActivationDataResponse.t()}
          | {:error, RestServiceError.t()}
  def create_payment_instrument_network_token_activation_data(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call: {PaymentInstruments, :create_payment_instrument_network_token_activation_data},
      url: "/paymentInstruments/#{id}/networkTokenActivationData",
      body: body,
      method: :post,
      request: [
        {"application/json", {NetworkTokenActivationDataRequest, :t}}
      ],
      response: [
        {200, {NetworkTokenActivationDataResponse, :t}},
        {400, {RestServiceError, :t}},
        {401, {RestServiceError, :t}},
        {403, {RestServiceError, :t}},
        {422, {RestServiceError, :t}},
        {500, {RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Reveal the data of a payment instrument

  Returns the encrypted data of a specified payment instrument. These data include:

  - The primary account number (PAN)
  - The card verification code (CVC)
  - The expiry date

  You can decrypt the data to reveal it in your user interface.

  To make this request, your API credential must have the following role:
  * Bank Issuing PAN Reveal Webservice role

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec create_payment_instruments_reveal(
          body :: PaymentInstrumentRevealRequest.t(),
          opts :: keyword
        ) ::
          {:ok, PaymentInstrumentRevealResponse.t()}
          | {:error, RestServiceError.t()}
  def create_payment_instruments_reveal(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {PaymentInstruments, :create_payment_instruments_reveal},
      url: "/paymentInstruments/reveal",
      body: body,
      method: :post,
      request: [{"application/json", {PaymentInstrumentRevealRequest, :t}}],
      response: [
        {200, {PaymentInstrumentRevealResponse, :t}},
        {400, {RestServiceError, :t}},
        {401, {RestServiceError, :t}},
        {403, {RestServiceError, :t}},
        {422, {RestServiceError, :t}},
        {500, {RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
