defmodule Adyen.BalancePlatform.PaymentInstrumentGroups do
  @moduledoc """
  Provides API endpoints related to payment instrument groups
  """

  alias Adyen.BalancePlatform.PaymentInstrumentGroup
  alias Adyen.BalancePlatform.PaymentInstrumentGroupInfo
  alias Adyen.BalancePlatform.PaymentInstrumentGroups
  alias Adyen.BalancePlatform.RestServiceError
  alias Adyen.BalancePlatform.TransactionRulesResponse

  @default_client Adyen.Client

  @doc """
  Get a payment instrument group

  Returns the details of a payment instrument group.
  """
  @spec get_payment_instrument_group(id :: String.t(), opts :: keyword) ::
          {:ok, PaymentInstrumentGroup.t()}
          | {:error, RestServiceError.t()}
  def get_payment_instrument_group(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {PaymentInstrumentGroups, :get_payment_instrument_group},
      url: "/paymentInstrumentGroups/#{id}",
      method: :get,
      response: [
        {200, {PaymentInstrumentGroup, :t}},
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
  Get all transaction rules for a payment instrument group

  Returns a list of all the transaction rules associated with a payment instrument group.
  """
  @spec get_payment_instrument_group_transaction_rules(id :: String.t(), opts :: keyword) ::
          {:ok, TransactionRulesResponse.t()}
          | {:error, RestServiceError.t()}
  def get_payment_instrument_group_transaction_rules(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {PaymentInstrumentGroups, :get_payment_instrument_group_transaction_rules},
      url: "/paymentInstrumentGroups/#{id}/transactionRules",
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
  Create a payment instrument group

  Creates a payment instrument group to associate and group payment instrument resources together. You can apply a transaction rule to a payment instrument group.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec create_payment_instrument_groups(
          body :: PaymentInstrumentGroupInfo.t(),
          opts :: keyword
        ) ::
          {:ok, PaymentInstrumentGroup.t()}
          | {:error, RestServiceError.t()}
  def create_payment_instrument_groups(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {PaymentInstrumentGroups, :create_payment_instrument_groups},
      url: "/paymentInstrumentGroups",
      body: body,
      method: :post,
      request: [{"application/json", {PaymentInstrumentGroupInfo, :t}}],
      response: [
        {200, {PaymentInstrumentGroup, :t}},
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
