defmodule Adyen.Recurring.V25.General do
  @moduledoc """
  Provides API endpoints related to general
  """

  @default_client Adyen.Client

  @doc """
  Disable stored payment details

  Disables stored payment details to stop charging a shopper with this particular recurring detail ID.

  For more information, refer to [Disable stored details](https://docs.adyen.com/online-payments/classic-integrations/classic-api-integration/tokenization/disable-stored-details).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_disable(body :: Adyen.Recurring.V25.DisableRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Recurring.V25.DisableResult.t()}
          | {:error, Adyen.Recurring.V25.ServiceError.t()}
  def post_disable(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Recurring.V25.General, :post_disable},
      url: "/disable",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Recurring.V25.DisableRequest, :t}}],
      response: [
        {200, {Adyen.Recurring.V25.DisableResult, :t}},
        {400, {Adyen.Recurring.V25.ServiceError, :t}},
        {401, {Adyen.Recurring.V25.ServiceError, :t}},
        {403, {Adyen.Recurring.V25.ServiceError, :t}},
        {422, {Adyen.Recurring.V25.ServiceError, :t}},
        {500, {Adyen.Recurring.V25.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get stored payment details

  Lists the stored payment details for a shopper, if there are any available. The recurring detail ID can be used with a regular authorisation request to charge the shopper. A summary of the payment detail is returned for presentation to the shopper.

  For more information, refer to [Retrieve stored details](https://docs.adyen.com/classic-integration/recurring-payments/retrieve-stored-details/).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_list_recurring_details(
          body :: Adyen.Recurring.V25.RecurringDetailsRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Recurring.V25.RecurringDetailsResult.t()}
          | {:error, Adyen.Recurring.V25.ServiceError.t()}
  def post_list_recurring_details(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Recurring.V25.General, :post_list_recurring_details},
      url: "/listRecurringDetails",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Recurring.V25.RecurringDetailsRequest, :t}}],
      response: [
        {200, {Adyen.Recurring.V25.RecurringDetailsResult, :t}},
        {400, {Adyen.Recurring.V25.ServiceError, :t}},
        {401, {Adyen.Recurring.V25.ServiceError, :t}},
        {403, {Adyen.Recurring.V25.ServiceError, :t}},
        {422, {Adyen.Recurring.V25.ServiceError, :t}},
        {500, {Adyen.Recurring.V25.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Ask issuer to notify the shopper

  Sends a request to the issuer so they can inform the shopper about the upcoming recurring payment. This endpoint is used only for local acquiring in India. For more information, refer to [Recurring card payments in India](https://docs.adyen.com/payment-methods/cards/cards-recurring-india).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_notify_shopper(body :: Adyen.Recurring.V25.NotifyShopperRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Recurring.V25.NotifyShopperResult.t()}
          | {:error, Adyen.Recurring.V25.ServiceError.t()}
  def post_notify_shopper(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Recurring.V25.General, :post_notify_shopper},
      url: "/notifyShopper",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Recurring.V25.NotifyShopperRequest, :t}}],
      response: [
        {200, {Adyen.Recurring.V25.NotifyShopperResult, :t}},
        {400, {Adyen.Recurring.V25.ServiceError, :t}},
        {401, {Adyen.Recurring.V25.ServiceError, :t}},
        {403, {Adyen.Recurring.V25.ServiceError, :t}},
        {422, {Adyen.Recurring.V25.ServiceError, :t}},
        {500, {Adyen.Recurring.V25.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Schedule running the Account Updater

  When making the API call, you can submit either the credit card information, or the recurring detail reference and the shopper reference:
  * If the card information is provided, all the sub-fields for `card` are mandatory.
  * If the recurring detail reference is provided, the fields for `shopperReference` and `selectedRecurringDetailReference` are mandatory.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_schedule_account_updater(
          body :: Adyen.Recurring.V25.ScheduleAccountUpdaterRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Recurring.V25.ScheduleAccountUpdaterResult.t()}
          | {:error, Adyen.Recurring.V25.ServiceError.t()}
  def post_schedule_account_updater(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Recurring.V25.General, :post_schedule_account_updater},
      url: "/scheduleAccountUpdater",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Recurring.V25.ScheduleAccountUpdaterRequest, :t}}],
      response: [
        {200, {Adyen.Recurring.V25.ScheduleAccountUpdaterResult, :t}},
        {400, {Adyen.Recurring.V25.ServiceError, :t}},
        {401, {Adyen.Recurring.V25.ServiceError, :t}},
        {403, {Adyen.Recurring.V25.ServiceError, :t}},
        {422, {Adyen.Recurring.V25.ServiceError, :t}},
        {500, {Adyen.Recurring.V25.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
