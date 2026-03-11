defmodule Adyen.Checkout.V51.Modifications do
  @moduledoc """
  Provides API endpoints related to modifications
  """

  @default_client Adyen.Client

  @doc """
  Cancel an authorised payment

  Cancels the authorisation on a payment that has not yet been [captured](https://docs.adyen.com/api-explorer/#/CheckoutService/latest/post/payments/{paymentPspReference}/captures), and returns a unique reference for this request. You get the outcome of the request asynchronously, in a [**TECHNICAL_CANCEL** webhook](https://docs.adyen.com/online-payments/cancel#cancellation-webhook).

  If you want to cancel a payment using the [`pspReference`](https://docs.adyen.com/api-explorer/Checkout/latest/post/payments#responses-200-pspReference), use the [`/payments/{paymentPspReference}/cancels`](https://docs.adyen.com/api-explorer/#/CheckoutService/latest/post/payments/{paymentPspReference}/cancels) endpoint instead.

  If you want to cancel a payment but are not sure whether it has been captured, use the [`/payments/{paymentPspReference}/reversals`](https://docs.adyen.com/api-explorer/#/CheckoutService/latest/post/payments/{paymentPspReference}/reversals) endpoint instead.

  For more information, refer to [Cancel](https://docs.adyen.com/online-payments/cancel).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_cancels(
          body :: Adyen.Checkout.V51.StandalonePaymentCancelRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Checkout.V51.StandalonePaymentCancelResponse.t()}
          | {:error, Adyen.Checkout.V51.ServiceError.t()}
  def post_cancels(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Checkout.V51.Modifications, :post_cancels},
      url: "/cancels",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Checkout.V51.StandalonePaymentCancelRequest, :t}}],
      response: [
        {201, {Adyen.Checkout.V51.StandalonePaymentCancelResponse, :t}},
        {400, {Adyen.Checkout.V51.ServiceError, :t}},
        {401, {Adyen.Checkout.V51.ServiceError, :t}},
        {403, {Adyen.Checkout.V51.ServiceError, :t}},
        {422, {Adyen.Checkout.V51.ServiceError, :t}},
        {500, {Adyen.Checkout.V51.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update an authorised amount

  Increases or decreases the authorised payment amount and returns a unique reference for this request. You get the outcome of the request asynchronously, in an [**AUTHORISATION_ADJUSTMENT** webhook](https://docs.adyen.com/development-resources/webhooks/webhook-types/#event-codes).

  You can only update authorised amounts that have not yet been [captured](https://docs.adyen.com/api-explorer/#/CheckoutService/latest/post/payments/{paymentPspReference}/captures).

  The amount you specify in the request is the updated amount, which is larger or smaller than the initial authorised amount.

  For more information, refer to [Authorisation adjustment](https://docs.adyen.com/online-payments/adjust-authorisation#use-cases).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_payments_payment_psp_reference_amount_updates(
          paymentPspReference :: String.t(),
          body :: Adyen.Checkout.V51.PaymentAmountUpdateRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Checkout.V51.PaymentAmountUpdateResponse.t()}
          | {:error, Adyen.Checkout.V51.ServiceError.t()}
  def post_payments_payment_psp_reference_amount_updates(paymentPspReference, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [paymentPspReference: paymentPspReference, body: body],
      call:
        {Adyen.Checkout.V51.Modifications, :post_payments_payment_psp_reference_amount_updates},
      url: "/payments/#{paymentPspReference}/amountUpdates",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Checkout.V51.PaymentAmountUpdateRequest, :t}}],
      response: [
        {201, {Adyen.Checkout.V51.PaymentAmountUpdateResponse, :t}},
        {400, {Adyen.Checkout.V51.ServiceError, :t}},
        {401, {Adyen.Checkout.V51.ServiceError, :t}},
        {403, {Adyen.Checkout.V51.ServiceError, :t}},
        {422, {Adyen.Checkout.V51.ServiceError, :t}},
        {500, {Adyen.Checkout.V51.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Cancel an authorised payment

  Cancels the authorisation on a payment that has not yet been [captured](https://docs.adyen.com/api-explorer/#/CheckoutService/latest/post/payments/{paymentPspReference}/captures), and returns a unique reference for this request. You get the outcome of the request asynchronously, in a [**CANCELLATION** webhook](https://docs.adyen.com/online-payments/cancel#cancellation-webhook).

  If you want to cancel a payment but don't have the [`pspReference`](https://docs.adyen.com/api-explorer/Checkout/latest/post/payments#responses-200-pspReference), use the [`/cancels`](https://docs.adyen.com/api-explorer/#/CheckoutService/latest/post/cancels) endpoint instead.

  If you want to cancel a payment but are not sure whether it has been captured, use the [`/payments/{paymentPspReference}/reversals`](https://docs.adyen.com/api-explorer/#/CheckoutService/latest/post/payments/{paymentPspReference}/reversals) endpoint instead.

  For more information, refer to [Cancel](https://docs.adyen.com/online-payments/cancel).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_payments_payment_psp_reference_cancels(
          paymentPspReference :: String.t(),
          body :: Adyen.Checkout.V51.PaymentCancelRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Checkout.V51.PaymentCancelResponse.t()}
          | {:error, Adyen.Checkout.V51.ServiceError.t()}
  def post_payments_payment_psp_reference_cancels(paymentPspReference, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [paymentPspReference: paymentPspReference, body: body],
      call: {Adyen.Checkout.V51.Modifications, :post_payments_payment_psp_reference_cancels},
      url: "/payments/#{paymentPspReference}/cancels",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Checkout.V51.PaymentCancelRequest, :t}}],
      response: [
        {201, {Adyen.Checkout.V51.PaymentCancelResponse, :t}},
        {400, {Adyen.Checkout.V51.ServiceError, :t}},
        {401, {Adyen.Checkout.V51.ServiceError, :t}},
        {403, {Adyen.Checkout.V51.ServiceError, :t}},
        {422, {Adyen.Checkout.V51.ServiceError, :t}},
        {500, {Adyen.Checkout.V51.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Capture an authorised payment

   Captures an authorised payment and returns a unique reference for this request. You get the outcome of the request asynchronously, in a [**CAPTURE** webhook](https://docs.adyen.com/online-payments/capture#capture-notification).

  You can capture either the full authorised amount or a part of the authorised amount. By default, any unclaimed amount after a partial capture gets cancelled. This does not apply if you enabled multiple partial captures on your account and the payment method supports multiple partial captures. 

  [Automatic capture](https://docs.adyen.com/online-payments/capture#automatic-capture) is the default setting for most payment methods. In these cases, you don't need to make capture requests. However, making capture requests for payments that are captured automatically does not result in double charges.

  For more information, refer to [Capture](https://docs.adyen.com/online-payments/capture).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_payments_payment_psp_reference_captures(
          paymentPspReference :: String.t(),
          body :: Adyen.Checkout.V51.PaymentCaptureRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Checkout.V51.PaymentCaptureResponse.t()}
          | {:error, Adyen.Checkout.V51.ServiceError.t()}
  def post_payments_payment_psp_reference_captures(paymentPspReference, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [paymentPspReference: paymentPspReference, body: body],
      call: {Adyen.Checkout.V51.Modifications, :post_payments_payment_psp_reference_captures},
      url: "/payments/#{paymentPspReference}/captures",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Checkout.V51.PaymentCaptureRequest, :t}}],
      response: [
        {201, {Adyen.Checkout.V51.PaymentCaptureResponse, :t}},
        {400, {Adyen.Checkout.V51.ServiceError, :t}},
        {401, {Adyen.Checkout.V51.ServiceError, :t}},
        {403, {Adyen.Checkout.V51.ServiceError, :t}},
        {422, {Adyen.Checkout.V51.ServiceError, :t}},
        {500, {Adyen.Checkout.V51.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Refund a captured payment

  Refunds a payment that has been [captured](https://docs.adyen.com/api-explorer/#/CheckoutService/latest/post/payments/{paymentPspReference}/captures), and returns a unique reference for this request. You get the outcome of the request asynchronously, in a [**REFUND** webhook](https://docs.adyen.com/online-payments/refund#refund-webhook).

  You can refund either the full captured amount or a part of the captured amount. You can also perform multiple partial refunds, as long as their sum doesn't exceed the captured amount.

  > Some payment methods do not support partial refunds. To learn if a payment method supports partial refunds, refer to the payment method page such as [cards](https://docs.adyen.com/payment-methods/cards#supported-cards), [iDEAL](https://docs.adyen.com/payment-methods/ideal), or [Klarna](https://docs.adyen.com/payment-methods/klarna). 

  If you want to refund a payment but are not sure whether it has been captured, use the [`/payments/{paymentPspReference}/reversals`](https://docs.adyen.com/api-explorer/#/CheckoutService/latest/post/payments/{paymentPspReference}/reversals) endpoint instead.

  For more information, refer to [Refund](https://docs.adyen.com/online-payments/refund).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_payments_payment_psp_reference_refunds(
          paymentPspReference :: String.t(),
          body :: Adyen.Checkout.V51.PaymentRefundRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Checkout.V51.PaymentRefundResponse.t()}
          | {:error, Adyen.Checkout.V51.ServiceError.t()}
  def post_payments_payment_psp_reference_refunds(paymentPspReference, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [paymentPspReference: paymentPspReference, body: body],
      call: {Adyen.Checkout.V51.Modifications, :post_payments_payment_psp_reference_refunds},
      url: "/payments/#{paymentPspReference}/refunds",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Checkout.V51.PaymentRefundRequest, :t}}],
      response: [
        {201, {Adyen.Checkout.V51.PaymentRefundResponse, :t}},
        {400, {Adyen.Checkout.V51.ServiceError, :t}},
        {401, {Adyen.Checkout.V51.ServiceError, :t}},
        {403, {Adyen.Checkout.V51.ServiceError, :t}},
        {422, {Adyen.Checkout.V51.ServiceError, :t}},
        {500, {Adyen.Checkout.V51.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Refund or cancel a payment

  [Refunds](https://docs.adyen.com/api-explorer/#/CheckoutService/latest/post/payments/{paymentPspReference}/refunds) a payment if it has already been captured, and [cancels](https://docs.adyen.com/api-explorer/#/CheckoutService/latest/post/payments/{paymentPspReference}/cancels) a payment if it has not yet been captured. Returns a unique reference for this request. You get the outcome of the request asynchronously, in a [**CANCEL_OR_REFUND** webhook](https://docs.adyen.com/online-payments/reversal/#cancel-or-refund-webhook).

  The reversed amount is always the full payment amount.
  > Do not use this request for payments that involve multiple partial captures.

  For more information, refer to [Reversal](https://docs.adyen.com/online-payments/reversal).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_payments_payment_psp_reference_reversals(
          paymentPspReference :: String.t(),
          body :: Adyen.Checkout.V51.PaymentReversalRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Checkout.V51.PaymentReversalResponse.t()}
          | {:error, Adyen.Checkout.V51.ServiceError.t()}
  def post_payments_payment_psp_reference_reversals(paymentPspReference, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [paymentPspReference: paymentPspReference, body: body],
      call: {Adyen.Checkout.V51.Modifications, :post_payments_payment_psp_reference_reversals},
      url: "/payments/#{paymentPspReference}/reversals",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Checkout.V51.PaymentReversalRequest, :t}}],
      response: [
        {201, {Adyen.Checkout.V51.PaymentReversalResponse, :t}},
        {400, {Adyen.Checkout.V51.ServiceError, :t}},
        {401, {Adyen.Checkout.V51.ServiceError, :t}},
        {403, {Adyen.Checkout.V51.ServiceError, :t}},
        {422, {Adyen.Checkout.V51.ServiceError, :t}},
        {500, {Adyen.Checkout.V51.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
