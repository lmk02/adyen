defmodule Adyen.BalancePlatform.V1.PaymentInstruments do
  @moduledoc """
  Provides API endpoints related to payment instruments
  """

  @default_client Adyen.Client

  @doc """
  Get a payment instrument

  Returns the details of a payment instrument.
  """
  @spec get_payment_instruments_id(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.V1.PaymentInstrument.t()}
          | {:error, Adyen.BalancePlatform.V1.RestServiceError.t()}
  def get_payment_instruments_id(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.BalancePlatform.V1.PaymentInstruments, :get_payment_instruments_id},
      url: "/paymentInstruments/#{id}",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.V1.PaymentInstrument, :t}},
        {400, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.V1.RestServiceError, :t}}
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
  @spec get_payment_instruments_id_reveal(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.V1.PaymentInstrumentRevealInfo.t()}
          | {:error, Adyen.BalancePlatform.V1.RestServiceError.t()}
  def get_payment_instruments_id_reveal(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.BalancePlatform.V1.PaymentInstruments, :get_payment_instruments_id_reveal},
      url: "/paymentInstruments/#{id}/reveal",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.V1.PaymentInstrumentRevealInfo, :t}},
        {400, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.V1.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get all transaction rules for a payment instrument

  Returns a list of transaction rules associated with a payment instrument.
  """
  @spec get_payment_instruments_id_transaction_rules(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.V1.TransactionRulesResponse.t()}
          | {:error, Adyen.BalancePlatform.V1.RestServiceError.t()}
  def get_payment_instruments_id_transaction_rules(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call:
        {Adyen.BalancePlatform.V1.PaymentInstruments,
         :get_payment_instruments_id_transaction_rules},
      url: "/paymentInstruments/#{id}/transactionRules",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.V1.TransactionRulesResponse, :t}},
        {400, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.V1.RestServiceError, :t}}
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
  @spec patch_payment_instruments_id(
          id :: String.t(),
          body :: Adyen.BalancePlatform.V1.PaymentInstrumentUpdateRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.V1.UpdatePaymentInstrument.t()}
          | {:error, Adyen.BalancePlatform.V1.RestServiceError.t()}
  def patch_payment_instruments_id(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call: {Adyen.BalancePlatform.V1.PaymentInstruments, :patch_payment_instruments_id},
      url: "/paymentInstruments/#{id}",
      body: body,
      method: :patch,
      request: [
        {"application/json", {Adyen.BalancePlatform.V1.PaymentInstrumentUpdateRequest, :t}}
      ],
      response: [
        {200, {Adyen.BalancePlatform.V1.UpdatePaymentInstrument, :t}},
        {400, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.V1.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create a payment instrument

  Creates a payment instrument to issue a physical card, a virtual card, or a business account to your user.

   For more information, refer to [Issue cards](https://docs.adyen.com/issuing/create-cards) or [Issue business accounts](https://docs.adyen.com/marketplaces-and-platforms/business-accounts).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_payment_instruments(
          body :: Adyen.BalancePlatform.V1.PaymentInstrumentInfo.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.V1.PaymentInstrument.t()}
          | {:error, Adyen.BalancePlatform.V1.RestServiceError.t()}
  def post_payment_instruments(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.BalancePlatform.V1.PaymentInstruments, :post_payment_instruments},
      url: "/paymentInstruments",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.BalancePlatform.V1.PaymentInstrumentInfo, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.V1.PaymentInstrument, :t}},
        {400, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.V1.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
