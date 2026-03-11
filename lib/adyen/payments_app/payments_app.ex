defmodule Adyen.PaymentsApp.PaymentsApp do
  @moduledoc """
  Provides API endpoints related to payments app
  """

  @default_client Adyen.Client

  @doc """
  Get a list of Payments Apps - merchant level

  Returns the list of Payments App instances for the merchant account identified in the path.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Adyen Payments App role

  ## Options

    * `statuses`: The status of the Payments App. Comma-separated list of one or more values. If no value is provided, the list returns all statuses. 
      
      Possible values:
      
      * **BOARDING**
      
       * **BOARDED**
      
       * **REVOKED**
    * `limit`: The number of items to return.
    * `offset`: The number of items to skip.

  """
  @spec get_merchants_merchant_id_payments_apps(merchantId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.PaymentsApp.PaymentsAppResponse.t()}
          | {:error, Adyen.PaymentsApp.DefaultErrorResponseEntity.t()}
  def get_merchants_merchant_id_payments_apps(merchantId, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:limit, :offset, :statuses])

    client.request(%{
      args: [merchantId: merchantId],
      call: {Adyen.PaymentsApp.PaymentsApp, :get_merchants_merchant_id_payments_apps},
      url: "/merchants/#{merchantId}/paymentsApps",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.PaymentsApp.PaymentsAppResponse, :t}},
        {400, {Adyen.PaymentsApp.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.PaymentsApp.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.PaymentsApp.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.PaymentsApp.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.PaymentsApp.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a list of Payments Apps - store level

  Returns the list of Payments App instances for the store identified in the path.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Adyen Payments App role

  ## Options

    * `statuses`: The status of the Payments App. Comma-separated list of one or more values. If no value is provided, the list returns all statuses. 
      
      Possible values:
      
      * **BOARDING**
      
       * **BOARDED**
      
       * **REVOKED**
    * `limit`: The number of items to return.
    * `offset`: The number of items to skip.

  """
  @spec get_merchants_merchant_id_stores_store_id_payments_apps(
          merchantId :: String.t(),
          storeId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.PaymentsApp.PaymentsAppResponse.t()}
          | {:error, Adyen.PaymentsApp.DefaultErrorResponseEntity.t()}
  def get_merchants_merchant_id_stores_store_id_payments_apps(merchantId, storeId, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:limit, :offset, :statuses])

    client.request(%{
      args: [merchantId: merchantId, storeId: storeId],
      call:
        {Adyen.PaymentsApp.PaymentsApp, :get_merchants_merchant_id_stores_store_id_payments_apps},
      url: "/merchants/#{merchantId}/stores/#{storeId}/paymentsApps",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.PaymentsApp.PaymentsAppResponse, :t}},
        {400, {Adyen.PaymentsApp.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.PaymentsApp.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.PaymentsApp.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.PaymentsApp.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.PaymentsApp.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create a boarding token - merchant level

  Creates a boarding token used to authenticate the installation of a Payments App instance on an Android device. The boarding token is created for the `boardingRequestToken` of the Payments App for the merchant account identified in the path. 

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Adyen Payments App role

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_merchants_merchant_id_generate_payments_app_boarding_token(
          merchantId :: String.t(),
          body :: Adyen.PaymentsApp.BoardingTokenRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.PaymentsApp.BoardingTokenResponse.t()}
          | {:error, Adyen.PaymentsApp.DefaultErrorResponseEntity.t()}
  def post_merchants_merchant_id_generate_payments_app_boarding_token(
        merchantId,
        body,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, body: body],
      call:
        {Adyen.PaymentsApp.PaymentsApp,
         :post_merchants_merchant_id_generate_payments_app_boarding_token},
      url: "/merchants/#{merchantId}/generatePaymentsAppBoardingToken",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.PaymentsApp.BoardingTokenRequest, :t}}],
      response: [
        {200, {Adyen.PaymentsApp.BoardingTokenResponse, :t}},
        {400, {Adyen.PaymentsApp.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.PaymentsApp.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.PaymentsApp.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.PaymentsApp.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.PaymentsApp.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Revoke Payments App instance authentication

  Revokes the authentication of the Payments App instance for the `installationId` and merchant account identified in the path. This call revokes the authentication of the Payments App instance with the `installationId` identified in the path for both merchant accounts and stores.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Adyen Payments App role

  """
  @spec post_merchants_merchant_id_payments_apps_installation_id_revoke(
          merchantId :: String.t(),
          installationId :: String.t(),
          opts :: keyword
        ) :: {:ok, any} | {:error, Adyen.PaymentsApp.DefaultErrorResponseEntity.t()}
  def post_merchants_merchant_id_payments_apps_installation_id_revoke(
        merchantId,
        installationId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, installationId: installationId],
      call:
        {Adyen.PaymentsApp.PaymentsApp,
         :post_merchants_merchant_id_payments_apps_installation_id_revoke},
      url: "/merchants/#{merchantId}/paymentsApps/#{installationId}/revoke",
      method: :post,
      response: [
        {200, :unknown},
        {400, {Adyen.PaymentsApp.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.PaymentsApp.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.PaymentsApp.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create a boarding token - store level

  Creates a boarding token used to authenticate the installation of a Payments App instance on an Android device. The boarding token is created for the `boardingRequestToken` of the Payments App for the store identified in the path.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Adyen Payments App role

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_merchants_merchant_id_stores_store_id_generate_payments_app_boarding_token(
          merchantId :: String.t(),
          storeId :: String.t(),
          body :: Adyen.PaymentsApp.BoardingTokenRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.PaymentsApp.BoardingTokenResponse.t()}
          | {:error, Adyen.PaymentsApp.DefaultErrorResponseEntity.t()}
  def post_merchants_merchant_id_stores_store_id_generate_payments_app_boarding_token(
        merchantId,
        storeId,
        body,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, storeId: storeId, body: body],
      call:
        {Adyen.PaymentsApp.PaymentsApp,
         :post_merchants_merchant_id_stores_store_id_generate_payments_app_boarding_token},
      url: "/merchants/#{merchantId}/stores/#{storeId}/generatePaymentsAppBoardingToken",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.PaymentsApp.BoardingTokenRequest, :t}}],
      response: [
        {200, {Adyen.PaymentsApp.BoardingTokenResponse, :t}},
        {400, {Adyen.PaymentsApp.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.PaymentsApp.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.PaymentsApp.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.PaymentsApp.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.PaymentsApp.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
