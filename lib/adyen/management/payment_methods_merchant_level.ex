defmodule Adyen.Management.PaymentMethodsMerchantLevel do
  @moduledoc """
  Provides API endpoints related to payment methods merchant level
  """

  @default_client Adyen.Client

  @doc """
  Get all payment methods

  Returns details for all payment methods of the merchant account identified in the path.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Payment methods read

  ## Options

    * `storeId`: The unique identifier of the store for which to return the payment methods.
    * `businessLineId`: The unique identifier of the Business Line for which to return the payment methods.
    * `pageSize`: The number of items to have on a page, maximum 100. The default is 10 items on a page.
    * `pageNumber`: The number of the page to fetch.

  """
  @spec get_merchants_merchant_id_payment_method_settings(
          merchantId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.PaymentMethodResponse.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def get_merchants_merchant_id_payment_method_settings(merchantId, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:businessLineId, :pageNumber, :pageSize, :storeId])

    client.request(%{
      args: [merchantId: merchantId],
      call:
        {Adyen.Management.PaymentMethodsMerchantLevel,
         :get_merchants_merchant_id_payment_method_settings},
      url: "/merchants/#{merchantId}/paymentMethodSettings",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.Management.PaymentMethodResponse, :t}},
        {204, :null},
        {400, {Adyen.Management.RestServiceError, :t}},
        {401, {Adyen.Management.RestServiceError, :t}},
        {403, {Adyen.Management.RestServiceError, :t}},
        {422, {Adyen.Management.RestServiceError, :t}},
        {429, {Adyen.Management.RestServiceError, :t}},
        {500, {Adyen.Management.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get payment method details

  Returns details for the merchant account and the payment method identified in the path.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Payment methods read

  """
  @spec get_merchants_merchant_id_payment_method_settings_payment_method_id(
          merchantId :: String.t(),
          paymentMethodId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.PaymentMethod.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def get_merchants_merchant_id_payment_method_settings_payment_method_id(
        merchantId,
        paymentMethodId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, paymentMethodId: paymentMethodId],
      call:
        {Adyen.Management.PaymentMethodsMerchantLevel,
         :get_merchants_merchant_id_payment_method_settings_payment_method_id},
      url: "/merchants/#{merchantId}/paymentMethodSettings/#{paymentMethodId}",
      method: :get,
      response: [
        {200, {Adyen.Management.PaymentMethod, :t}},
        {204, :null},
        {400, {Adyen.Management.RestServiceError, :t}},
        {401, {Adyen.Management.RestServiceError, :t}},
        {403, {Adyen.Management.RestServiceError, :t}},
        {422, {Adyen.Management.RestServiceError, :t}},
        {429, {Adyen.Management.RestServiceError, :t}},
        {500, {Adyen.Management.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get Apple Pay domains

  Returns all Apple Pay domains that are registered with the merchant account and the payment method identified in the path. For more information, see [Apple Pay documentation](https://docs.adyen.com/payment-methods/apple-pay/enable-apple-pay#register-merchant-domain).

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Payment methods read

  """
  @spec get_merchants_merchant_id_payment_method_settings_payment_method_id_get_apple_pay_domains(
          merchantId :: String.t(),
          paymentMethodId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.ApplePayInfo.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def get_merchants_merchant_id_payment_method_settings_payment_method_id_get_apple_pay_domains(
        merchantId,
        paymentMethodId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, paymentMethodId: paymentMethodId],
      call:
        {Adyen.Management.PaymentMethodsMerchantLevel,
         :get_merchants_merchant_id_payment_method_settings_payment_method_id_get_apple_pay_domains},
      url: "/merchants/#{merchantId}/paymentMethodSettings/#{paymentMethodId}/getApplePayDomains",
      method: :get,
      response: [
        {200, {Adyen.Management.ApplePayInfo, :t}},
        {204, :null},
        {400, {Adyen.Management.RestServiceError, :t}},
        {401, {Adyen.Management.RestServiceError, :t}},
        {403, {Adyen.Management.RestServiceError, :t}},
        {422, {Adyen.Management.RestServiceError, :t}},
        {500, {Adyen.Management.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update a payment method

  Updates payment method details for the merchant account and the payment method identified in the path.
  Depending the payment method [`type`](https://docs.adyen.com/api-explorer/Management/latest/patch/merchants/_merchantId_/paymentMethodSettings#request-type), you may need to send an additional object required for the payment method.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Payment methods read and write

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_merchants_merchant_id_payment_method_settings_payment_method_id(
          merchantId :: String.t(),
          paymentMethodId :: String.t(),
          body :: Adyen.Management.UpdatePaymentMethodInfo.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.PaymentMethod.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def patch_merchants_merchant_id_payment_method_settings_payment_method_id(
        merchantId,
        paymentMethodId,
        body,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, paymentMethodId: paymentMethodId, body: body],
      call:
        {Adyen.Management.PaymentMethodsMerchantLevel,
         :patch_merchants_merchant_id_payment_method_settings_payment_method_id},
      url: "/merchants/#{merchantId}/paymentMethodSettings/#{paymentMethodId}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.Management.UpdatePaymentMethodInfo, :t}}],
      response: [
        {200, {Adyen.Management.PaymentMethod, :t}},
        {204, :null},
        {400, {Adyen.Management.RestServiceError, :t}},
        {401, {Adyen.Management.RestServiceError, :t}},
        {403, {Adyen.Management.RestServiceError, :t}},
        {422, {Adyen.Management.RestServiceError, :t}},
        {429, {Adyen.Management.RestServiceError, :t}},
        {500, {Adyen.Management.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Request a payment method

  Sends a request to add a new payment method to the merchant account identified in the path.
  Depending the payment method [`type`](https://docs.adyen.com/api-explorer/Management/latest/post/merchants/_merchantId_/paymentMethodSettings#request-type), you may need to send an additional object required for the payment method.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Payment methods read and write

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_merchants_merchant_id_payment_method_settings(
          merchantId :: String.t(),
          body :: Adyen.Management.PaymentMethodSetupInfo.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.PaymentMethod.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def post_merchants_merchant_id_payment_method_settings(merchantId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, body: body],
      call:
        {Adyen.Management.PaymentMethodsMerchantLevel,
         :post_merchants_merchant_id_payment_method_settings},
      url: "/merchants/#{merchantId}/paymentMethodSettings",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Management.PaymentMethodSetupInfo, :t}}],
      response: [
        {200, {Adyen.Management.PaymentMethod, :t}},
        {204, :null},
        {400, {Adyen.Management.RestServiceError, :t}},
        {401, {Adyen.Management.RestServiceError, :t}},
        {403, {Adyen.Management.RestServiceError, :t}},
        {422, {Adyen.Management.RestServiceError, :t}},
        {429, {Adyen.Management.RestServiceError, :t}},
        {500, {Adyen.Management.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Add an Apple Pay domain

  Adds the new domain to the list of Apple Pay domains that are registered with the merchant account and the payment method identified in the path. For more information, see [Apple Pay documentation](https://docs.adyen.com/payment-methods/apple-pay/web-drop-in/?tab=adyen-certificate-live_1#going-live).

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Payment methods read and write

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_merchants_merchant_id_payment_method_settings_payment_method_id_add_apple_pay_domains(
          merchantId :: String.t(),
          paymentMethodId :: String.t(),
          body :: Adyen.Management.ApplePayInfo.t(),
          opts :: keyword
        ) :: :ok | {:error, Adyen.Management.RestServiceError.t()}
  def post_merchants_merchant_id_payment_method_settings_payment_method_id_add_apple_pay_domains(
        merchantId,
        paymentMethodId,
        body,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, paymentMethodId: paymentMethodId, body: body],
      call:
        {Adyen.Management.PaymentMethodsMerchantLevel,
         :post_merchants_merchant_id_payment_method_settings_payment_method_id_add_apple_pay_domains},
      url: "/merchants/#{merchantId}/paymentMethodSettings/#{paymentMethodId}/addApplePayDomains",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Management.ApplePayInfo, :t}}],
      response: [
        {204, :null},
        {400, {Adyen.Management.RestServiceError, :t}},
        {401, {Adyen.Management.RestServiceError, :t}},
        {403, {Adyen.Management.RestServiceError, :t}},
        {422, {Adyen.Management.RestServiceError, :t}},
        {429, {Adyen.Management.RestServiceError, :t}},
        {500, {Adyen.Management.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
