defmodule Adyen.A2APayments.V1.Payments do
  @moduledoc """
  Provides API endpoints related to payments
  """

  @default_client Adyen.Client

  @doc """
  Cancel payment

  Cancels the payment. Returns a URL for user redirection.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_payments_cancel(
          body :: Adyen.A2APayments.V1.CancelPaymentRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.A2APayments.V1.CancelPaymentResponse.t()}
          | {:error, Adyen.A2APayments.V1.DefaultErrorResponseEntity.t()}
  def post_payments_cancel(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.A2APayments.V1.Payments, :post_payments_cancel},
      url: "/payments/cancel",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.A2APayments.V1.CancelPaymentRequest, :t}}],
      response: [
        {200, {Adyen.A2APayments.V1.CancelPaymentResponse, :t}},
        {400, {Adyen.A2APayments.V1.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.A2APayments.V1.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.A2APayments.V1.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Confirm payment

      Confirms the payment using Strong Customer Authentication (SCA).

      To confirm a payment you must make this request two times:

      1. Make this request to initiate SCA and receive the WWW-Authenticate header.
      2. After the user completes the SCA challenge, make this request again, including the updated WWW-Authenticate header.

      The second response provides a redirection URL that guides the user to a payment success or failure page.
  For more information, see our [documentation](https://docs.adyen.com/business-accounts/send-funds-ideal-integration).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_payments_confirm(
          body :: Adyen.A2APayments.V1.ConfirmPaymentRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.A2APayments.V1.ConfirmPaymentResponse.t()}
          | {:error, Adyen.A2APayments.V1.DefaultErrorResponseEntity.t()}
  def post_payments_confirm(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.A2APayments.V1.Payments, :post_payments_confirm},
      url: "/payments/confirm",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.A2APayments.V1.ConfirmPaymentRequest, :t}}],
      response: [
        {200, {Adyen.A2APayments.V1.ConfirmPaymentResponse, :t}},
        {400, {Adyen.A2APayments.V1.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.A2APayments.V1.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.A2APayments.V1.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.A2APayments.V1.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Retrieve payment details

  Returns the details of an open payment, which you must show to the user. Also provides a token required to [confirm](https://docs.adyen.com/api-explorer/a2a-payments/latest/post/payments/confirm) or [cancel](https://docs.adyen.com/api-explorer/a2a-payments/latest/post/payments/cancel) the payment.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_payments_details(
          body :: Adyen.A2APayments.V1.IdealPaymentDetailsRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.A2APayments.V1.PaymentDetailsResponse.t()}
          | {:error, Adyen.A2APayments.V1.DefaultErrorResponseEntity.t()}
  def post_payments_details(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.A2APayments.V1.Payments, :post_payments_details},
      url: "/payments/details",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.A2APayments.V1.IdealPaymentDetailsRequest, :t}}],
      response: [
        {200, {Adyen.A2APayments.V1.PaymentDetailsResponse, :t}},
        {400, {Adyen.A2APayments.V1.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.A2APayments.V1.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.A2APayments.V1.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
