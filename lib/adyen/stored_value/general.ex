defmodule Adyen.StoredValue.General do
  @moduledoc """
  Provides API endpoints related to general
  """

  @default_client Adyen.Client

  @doc """
  Changes the status of the payment method.

  Changes the status of the provided payment method to the specified status.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_change_status(
          body :: Adyen.StoredValue.StoredValueStatusChangeRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.StoredValue.StoredValueStatusChangeResponse.t()}
          | {:error, Adyen.StoredValue.ServiceError.t()}
  def post_change_status(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.StoredValue.General, :post_change_status},
      url: "/changeStatus",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.StoredValue.StoredValueStatusChangeRequest, :t}}],
      response: [
        {200, {Adyen.StoredValue.StoredValueStatusChangeResponse, :t}},
        {400, {Adyen.StoredValue.ServiceError, :t}},
        {401, {Adyen.StoredValue.ServiceError, :t}},
        {403, {Adyen.StoredValue.ServiceError, :t}},
        {500, {Adyen.StoredValue.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Checks the balance.

  Checks the balance of the provided payment method.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_check_balance(
          body :: Adyen.StoredValue.StoredValueBalanceCheckRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.StoredValue.StoredValueBalanceCheckResponse.t()}
          | {:error, Adyen.StoredValue.ServiceError.t()}
  def post_check_balance(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.StoredValue.General, :post_check_balance},
      url: "/checkBalance",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.StoredValue.StoredValueBalanceCheckRequest, :t}}],
      response: [
        {200, {Adyen.StoredValue.StoredValueBalanceCheckResponse, :t}},
        {400, {Adyen.StoredValue.ServiceError, :t}},
        {401, {Adyen.StoredValue.ServiceError, :t}},
        {403, {Adyen.StoredValue.ServiceError, :t}},
        {500, {Adyen.StoredValue.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Issues a new card.

  Issues a new card of the given payment method.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_issue(body :: Adyen.StoredValue.StoredValueIssueRequest.t(), opts :: keyword) ::
          {:ok, Adyen.StoredValue.StoredValueIssueResponse.t()}
          | {:error, Adyen.StoredValue.ServiceError.t()}
  def post_issue(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.StoredValue.General, :post_issue},
      url: "/issue",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.StoredValue.StoredValueIssueRequest, :t}}],
      response: [
        {200, {Adyen.StoredValue.StoredValueIssueResponse, :t}},
        {400, {Adyen.StoredValue.ServiceError, :t}},
        {401, {Adyen.StoredValue.ServiceError, :t}},
        {403, {Adyen.StoredValue.ServiceError, :t}},
        {500, {Adyen.StoredValue.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Loads the payment method.

  Loads the payment method with the specified funds.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_load(body :: Adyen.StoredValue.StoredValueLoadRequest.t(), opts :: keyword) ::
          {:ok, Adyen.StoredValue.StoredValueLoadResponse.t()}
          | {:error, Adyen.StoredValue.ServiceError.t()}
  def post_load(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.StoredValue.General, :post_load},
      url: "/load",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.StoredValue.StoredValueLoadRequest, :t}}],
      response: [
        {200, {Adyen.StoredValue.StoredValueLoadResponse, :t}},
        {400, {Adyen.StoredValue.ServiceError, :t}},
        {401, {Adyen.StoredValue.ServiceError, :t}},
        {403, {Adyen.StoredValue.ServiceError, :t}},
        {500, {Adyen.StoredValue.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Merge the balance of two cards.

  Increases the balance of the paymentmethod by the full amount left on the source paymentmethod

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_merge_balance(
          body :: Adyen.StoredValue.StoredValueBalanceMergeRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.StoredValue.StoredValueBalanceMergeResponse.t()}
          | {:error, Adyen.StoredValue.ServiceError.t()}
  def post_merge_balance(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.StoredValue.General, :post_merge_balance},
      url: "/mergeBalance",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.StoredValue.StoredValueBalanceMergeRequest, :t}}],
      response: [
        {200, {Adyen.StoredValue.StoredValueBalanceMergeResponse, :t}},
        {400, {Adyen.StoredValue.ServiceError, :t}},
        {401, {Adyen.StoredValue.ServiceError, :t}},
        {403, {Adyen.StoredValue.ServiceError, :t}},
        {500, {Adyen.StoredValue.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Voids a transaction.

  Voids the referenced stored value transaction.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_void_transaction(
          body :: Adyen.StoredValue.StoredValueVoidRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.StoredValue.StoredValueVoidResponse.t()}
          | {:error, Adyen.StoredValue.ServiceError.t()}
  def post_void_transaction(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.StoredValue.General, :post_void_transaction},
      url: "/voidTransaction",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.StoredValue.StoredValueVoidRequest, :t}}],
      response: [
        {200, {Adyen.StoredValue.StoredValueVoidResponse, :t}},
        {400, {Adyen.StoredValue.ServiceError, :t}},
        {401, {Adyen.StoredValue.ServiceError, :t}},
        {403, {Adyen.StoredValue.ServiceError, :t}},
        {500, {Adyen.StoredValue.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
