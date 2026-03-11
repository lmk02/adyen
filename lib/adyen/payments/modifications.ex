defmodule Adyen.Payments.Modifications do
  @moduledoc """
  Provides API endpoints related to modifications
  """

  @default_client Adyen.Client

  @doc """
  Change the authorised amount

  Allows you to increase or decrease the authorised amount after the initial authorisation has taken place. This functionality enables for example tipping, improving the chances your authorisation will be valid, or charging the shopper when they have already left the merchant premises.

  > This endpoint is part of our [classic API integration](https://docs.adyen.com/online-payments/classic-integrations/api-integration-ecommerce).
  > If you have a [newer integration](https://docs.adyen.com/online-payments), and are doing:
  > * [Asynchronous adjustments](https://docs.adyen.com/online-payments/adjust-authorisation#asynchronous-or-synchronous-adjustment), use the [`/payments/{paymentPspReference}/amountUpdates`](https://docs.adyen.com/api-explorer/#/CheckoutService/v67/post/payments/{paymentPspReference}/amountUpdates) endpoint on Checkout API.
  > * [Synchronous adjustments](https://docs.adyen.com/online-payments/adjust-authorisation#asynchronous-or-synchronous-adjustment), use this endpoint.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_adjust_authorisation(
          body :: Adyen.Payments.AdjustAuthorisationRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Payments.ModificationResult.t()} | {:error, Adyen.Payments.ServiceError.t()}
  def post_adjust_authorisation(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Payments.Modifications, :post_adjust_authorisation},
      url: "/adjustAuthorisation",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Payments.AdjustAuthorisationRequest, :t}}],
      response: [
        {200, {Adyen.Payments.ModificationResult, :t}},
        {400, {Adyen.Payments.ServiceError, :t}},
        {401, {Adyen.Payments.ServiceError, :t}},
        {403, {Adyen.Payments.ServiceError, :t}},
        {422, {Adyen.Payments.ServiceError, :t}},
        {500, {Adyen.Payments.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Cancel an authorisation

  Cancels the authorisation hold on a payment, returning a unique reference for this request. You can cancel payments after authorisation only for payment methods that support distinct authorisations and captures.

  For more information, refer to [Cancel](https://docs.adyen.com/online-payments/classic-integrations/modify-payments/cancel).

  > This endpoint is part of our [classic API integration](https://docs.adyen.com/online-payments/classic-integrations/api-integration-ecommerce). If using a [newer integration](https://docs.adyen.com/online-payments), use the [`/payments/{paymentPspReference}/cancels`](https://docs.adyen.com/api-explorer/#/CheckoutService/payments/{paymentPspReference}/cancels) endpoint under Checkout API instead.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_cancel(body :: Adyen.Payments.CancelRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Payments.ModificationResult.t()} | {:error, Adyen.Payments.ServiceError.t()}
  def post_cancel(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Payments.Modifications, :post_cancel},
      url: "/cancel",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Payments.CancelRequest, :t}}],
      response: [
        {200, {Adyen.Payments.ModificationResult, :t}},
        {400, {Adyen.Payments.ServiceError, :t}},
        {401, {Adyen.Payments.ServiceError, :t}},
        {403, {Adyen.Payments.ServiceError, :t}},
        {422, {Adyen.Payments.ServiceError, :t}},
        {500, {Adyen.Payments.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Cancel or refund a payment

  Cancels a payment if it has not been captured yet, or refunds it if it has already been captured. This is useful when it is not certain if the payment has been captured or not (for example, when using auto-capture).

  Do not use this endpoint for payments that involve:
   * [Multiple partial captures](https://docs.adyen.com/online-payments/capture).
   * [Split data](https://docs.adyen.com/classic-platforms/processing-payments#providing-split-information) either at time of payment or capture for Adyen for Platforms.

   Instead, check if the payment has been captured and make a corresponding [`/refund`](https://docs.adyen.com/api-explorer/#/Payment/refund) or [`/cancel`](https://docs.adyen.com/api-explorer/#/Payment/cancel) call.

  For more information, refer to [Cancel or refund](https://docs.adyen.com/online-payments/classic-integrations/modify-payments/cancel-or-refund).

  > This endpoint is part of our [classic API integration](https://docs.adyen.com/online-payments/classic-integrations/api-integration-ecommerce). If using a [newer integration](https://docs.adyen.com/online-payments), use the [`/payments/{paymentPspReference}/reversals`](https://docs.adyen.com/api-explorer/#/CheckoutService/payments/{paymentPspReference}/reversals) endpoint under Checkout API instead.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_cancel_or_refund(body :: Adyen.Payments.CancelOrRefundRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Payments.ModificationResult.t()} | {:error, Adyen.Payments.ServiceError.t()}
  def post_cancel_or_refund(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Payments.Modifications, :post_cancel_or_refund},
      url: "/cancelOrRefund",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Payments.CancelOrRefundRequest, :t}}],
      response: [
        {200, {Adyen.Payments.ModificationResult, :t}},
        {400, {Adyen.Payments.ServiceError, :t}},
        {401, {Adyen.Payments.ServiceError, :t}},
        {403, {Adyen.Payments.ServiceError, :t}},
        {422, {Adyen.Payments.ServiceError, :t}},
        {500, {Adyen.Payments.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Capture an authorisation

  Captures the authorisation hold on a payment, returning a unique reference for this request. Usually the full authorisation amount is captured, however it's also possible to capture a smaller amount, which results in cancelling the remaining authorisation balance.

  Payment methods that are captured automatically after authorisation don't need to be captured. However, submitting a capture request on these transactions will not result in double charges. If immediate or delayed auto-capture is enabled, calling the capture method is not necessary.

  For more information refer to [Capture](https://docs.adyen.com/online-payments/classic-integrations/modify-payments/capture).

  > This endpoint is part of our [classic API integration](https://docs.adyen.com/online-payments/classic-integrations/api-integration-ecommerce). If using a [newer integration](https://docs.adyen.com/online-payments), use the [`/payments/{paymentPspReference}/captures`](https://docs.adyen.com/api-explorer/#/CheckoutService/v67/post/payments/{paymentPspReference}/captures) endpoint on Checkout API instead.


  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_capture(body :: Adyen.Payments.CaptureRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Payments.ModificationResult.t()} | {:error, Adyen.Payments.ServiceError.t()}
  def post_capture(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Payments.Modifications, :post_capture},
      url: "/capture",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Payments.CaptureRequest, :t}}],
      response: [
        {200, {Adyen.Payments.ModificationResult, :t}},
        {400, {Adyen.Payments.ServiceError, :t}},
        {401, {Adyen.Payments.ServiceError, :t}},
        {403, {Adyen.Payments.ServiceError, :t}},
        {422, {Adyen.Payments.ServiceError, :t}},
        {500, {Adyen.Payments.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create a donation

  Schedules a new payment to be created (including a new authorisation request) for the specified donation using the payment details of the original payment.

  > This endpoint is part of our [classic API integration](https://docs.adyen.com/online-payments/classic-integrations/api-integration-ecommerce). If using a [newer integration](https://docs.adyen.com/online-payments), use the [`/donations`](https://docs.adyen.com/api-explorer/#/CheckoutService/latest/post/donations) endpoint under Checkout API instead.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_donate(body :: Adyen.Payments.DonationRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Payments.ModificationResult.t()} | {:error, Adyen.Payments.ServiceError.t()}
  def post_donate(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Payments.Modifications, :post_donate},
      url: "/donate",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Payments.DonationRequest, :t}}],
      response: [
        {200, {Adyen.Payments.ModificationResult, :t}},
        {400, {Adyen.Payments.ServiceError, :t}},
        {401, {Adyen.Payments.ServiceError, :t}},
        {403, {Adyen.Payments.ServiceError, :t}},
        {422, {Adyen.Payments.ServiceError, :t}},
        {500, {Adyen.Payments.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Refund a captured payment

  Refunds a payment that has previously been captured, returning a unique reference for this request. Refunding can be done on the full captured amount or a partial amount. Multiple (partial) refunds will be accepted as long as their sum doesn't exceed the captured amount. Payments which have been authorised, but not captured, cannot be refunded, use the /cancel method instead.

  Some payment methods/gateways do not support partial/multiple refunds.
  A margin above the captured limit can be configured to cover shipping/handling costs.

  For more information, refer to [Refund](https://docs.adyen.com/online-payments/classic-integrations/modify-payments/refund).

  > This endpoint is part of our [classic API integration](https://docs.adyen.com/online-payments/classic-integrations/api-integration-ecommerce). If using a [newer integration](https://docs.adyen.com/online-payments), use the [`/payments/{paymentPspReference}/refunds`](https://docs.adyen.com/api-explorer/#/CheckoutService/payments/{paymentPspReference}/refunds) endpoint under Checkout API instead.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_refund(body :: Adyen.Payments.RefundRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Payments.ModificationResult.t()} | {:error, Adyen.Payments.ServiceError.t()}
  def post_refund(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Payments.Modifications, :post_refund},
      url: "/refund",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Payments.RefundRequest, :t}}],
      response: [
        {200, {Adyen.Payments.ModificationResult, :t}},
        {400, {Adyen.Payments.ServiceError, :t}},
        {401, {Adyen.Payments.ServiceError, :t}},
        {403, {Adyen.Payments.ServiceError, :t}},
        {422, {Adyen.Payments.ServiceError, :t}},
        {500, {Adyen.Payments.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Cancel an authorisation using your reference

  This endpoint allows you to cancel a payment if you do not have the PSP reference of the original payment request available.

  In your call, refer to the original payment by using the `reference` that you specified in your payment request.

  For more information, see [Technical cancel](https://docs.adyen.com/online-payments/classic-integrations/modify-payments/cancel#technical-cancel). 

  > This endpoint is part of our [classic API integration](https://docs.adyen.com/online-payments/classic-integrations/api-integration-ecommerce). If using a [newer integration](https://docs.adyen.com/online-payments), use the [`/cancels`](https://docs.adyen.com/api-explorer/#/CheckoutService/cancels) endpoint under Checkout API instead.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_technical_cancel(body :: Adyen.Payments.TechnicalCancelRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Payments.ModificationResult.t()} | {:error, Adyen.Payments.ServiceError.t()}
  def post_technical_cancel(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Payments.Modifications, :post_technical_cancel},
      url: "/technicalCancel",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Payments.TechnicalCancelRequest, :t}}],
      response: [
        {200, {Adyen.Payments.ModificationResult, :t}},
        {400, {Adyen.Payments.ServiceError, :t}},
        {401, {Adyen.Payments.ServiceError, :t}},
        {403, {Adyen.Payments.ServiceError, :t}},
        {422, {Adyen.Payments.ServiceError, :t}},
        {500, {Adyen.Payments.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Cancel an in-person refund

  This endpoint allows you to cancel an unreferenced refund request before it has been completed.

  In your call, you can refer to the original refund request either by using the `tenderReference`, or the `pspReference`. We recommend implementing based on the `tenderReference`, as this is generated for both offline and online transactions.

  For more information, refer to [Cancel an unreferenced refund](https://docs.adyen.com/point-of-sale/basic-tapi-integration/refund-payment/cancel-unreferenced).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_void_pending_refund(
          body :: Adyen.Payments.VoidPendingRefundRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Payments.ModificationResult.t()} | {:error, Adyen.Payments.ServiceError.t()}
  def post_void_pending_refund(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Payments.Modifications, :post_void_pending_refund},
      url: "/voidPendingRefund",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Payments.VoidPendingRefundRequest, :t}}],
      response: [
        {200, {Adyen.Payments.ModificationResult, :t}},
        {400, {Adyen.Payments.ServiceError, :t}},
        {401, {Adyen.Payments.ServiceError, :t}},
        {403, {Adyen.Payments.ServiceError, :t}},
        {422, {Adyen.Payments.ServiceError, :t}},
        {500, {Adyen.Payments.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
