defmodule Adyen.Recurring.General do
  @moduledoc """
  Provides API endpoints related to general
  """

  @default_client Adyen.Client

  @doc """
  Create new permits linked to a recurring contract.

  Create permits for a recurring contract, including support for defining restrictions.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_create_permit(body :: Adyen.Recurring.CreatePermitRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Recurring.CreatePermitResult.t()}
          | {:error, Adyen.Recurring.ServiceError.t()}
  def post_create_permit(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Recurring.General, :post_create_permit},
      url: "/createPermit",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Recurring.CreatePermitRequest, :t}}],
      response: [
        {200, {Adyen.Recurring.CreatePermitResult, :t}},
        {400, {Adyen.Recurring.ServiceError, :t}},
        {401, {Adyen.Recurring.ServiceError, :t}},
        {403, {Adyen.Recurring.ServiceError, :t}},
        {422, {Adyen.Recurring.ServiceError, :t}},
        {500, {Adyen.Recurring.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Disable stored payment details

  Disables stored payment details to stop charging a shopper with this particular recurring detail ID.

  For more information, refer to [Disable stored details](https://docs.adyen.com/classic-integration/recurring-payments/disable-stored-details/).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_disable(body :: Adyen.Recurring.DisableRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Recurring.DisableResult.t()} | {:error, Adyen.Recurring.ServiceError.t()}
  def post_disable(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Recurring.General, :post_disable},
      url: "/disable",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Recurring.DisableRequest, :t}}],
      response: [
        {200, {Adyen.Recurring.DisableResult, :t}},
        {400, {Adyen.Recurring.ServiceError, :t}},
        {401, {Adyen.Recurring.ServiceError, :t}},
        {403, {Adyen.Recurring.ServiceError, :t}},
        {422, {Adyen.Recurring.ServiceError, :t}},
        {500, {Adyen.Recurring.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Disable an existing permit.

  Disable a permit that was previously linked to a recurringDetailReference.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_disable_permit(body :: Adyen.Recurring.DisablePermitRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Recurring.DisablePermitResult.t()}
          | {:error, Adyen.Recurring.ServiceError.t()}
  def post_disable_permit(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Recurring.General, :post_disable_permit},
      url: "/disablePermit",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Recurring.DisablePermitRequest, :t}}],
      response: [
        {200, {Adyen.Recurring.DisablePermitResult, :t}},
        {400, {Adyen.Recurring.ServiceError, :t}},
        {401, {Adyen.Recurring.ServiceError, :t}},
        {403, {Adyen.Recurring.ServiceError, :t}},
        {422, {Adyen.Recurring.ServiceError, :t}},
        {500, {Adyen.Recurring.ServiceError, :t}}
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
          body :: Adyen.Recurring.RecurringDetailsRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Recurring.RecurringDetailsResult.t()}
          | {:error, Adyen.Recurring.ServiceError.t()}
  def post_list_recurring_details(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Recurring.General, :post_list_recurring_details},
      url: "/listRecurringDetails",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Recurring.RecurringDetailsRequest, :t}}],
      response: [
        {200, {Adyen.Recurring.RecurringDetailsResult, :t}},
        {400, {Adyen.Recurring.ServiceError, :t}},
        {401, {Adyen.Recurring.ServiceError, :t}},
        {403, {Adyen.Recurring.ServiceError, :t}},
        {422, {Adyen.Recurring.ServiceError, :t}},
        {500, {Adyen.Recurring.ServiceError, :t}}
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
  @spec post_notify_shopper(body :: Adyen.Recurring.NotifyShopperRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Recurring.NotifyShopperResult.t()}
          | {:error, Adyen.Recurring.ServiceError.t()}
  def post_notify_shopper(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Recurring.General, :post_notify_shopper},
      url: "/notifyShopper",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Recurring.NotifyShopperRequest, :t}}],
      response: [
        {200, {Adyen.Recurring.NotifyShopperResult, :t}},
        {400, {Adyen.Recurring.ServiceError, :t}},
        {401, {Adyen.Recurring.ServiceError, :t}},
        {403, {Adyen.Recurring.ServiceError, :t}},
        {422, {Adyen.Recurring.ServiceError, :t}},
        {500, {Adyen.Recurring.ServiceError, :t}}
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
          body :: Adyen.Recurring.ScheduleAccountUpdaterRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Recurring.ScheduleAccountUpdaterResult.t()}
          | {:error, Adyen.Recurring.ServiceError.t()}
  def post_schedule_account_updater(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Recurring.General, :post_schedule_account_updater},
      url: "/scheduleAccountUpdater",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Recurring.ScheduleAccountUpdaterRequest, :t}}],
      response: [
        {200, {Adyen.Recurring.ScheduleAccountUpdaterResult, :t}},
        {400, {Adyen.Recurring.ServiceError, :t}},
        {401, {Adyen.Recurring.ServiceError, :t}},
        {403, {Adyen.Recurring.ServiceError, :t}},
        {422, {Adyen.Recurring.ServiceError, :t}},
        {500, {Adyen.Recurring.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
