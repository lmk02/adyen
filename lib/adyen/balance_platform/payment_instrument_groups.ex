defmodule Adyen.BalancePlatform.PaymentInstrumentGroups do
  @moduledoc """
  Provides API endpoints related to payment instrument groups
  """

  @default_client Adyen.Client

  @doc """
  Get a payment instrument group

  Returns the details of a payment instrument group.
  """
  @spec get_payment_instrument_group(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.PaymentInstrumentGroup.t()}
          | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def get_payment_instrument_group(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.BalancePlatform.PaymentInstrumentGroups, :get_payment_instrument_group},
      url: "/paymentInstrumentGroups/#{id}",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.PaymentInstrumentGroup, :t}},
        {400, {Adyen.BalancePlatform.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get all transaction rules for a payment instrument group

  Returns a list of all the transaction rules associated with a payment instrument group.
  """
  @spec get_payment_instrument_group_transaction_rules(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.TransactionRulesResponse.t()}
          | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def get_payment_instrument_group_transaction_rules(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call:
        {Adyen.BalancePlatform.PaymentInstrumentGroups,
         :get_payment_instrument_group_transaction_rules},
      url: "/paymentInstrumentGroups/#{id}/transactionRules",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.TransactionRulesResponse, :t}},
        {400, {Adyen.BalancePlatform.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.RestServiceError, :t}}
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
          body :: Adyen.BalancePlatform.PaymentInstrumentGroupInfo.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.PaymentInstrumentGroup.t()}
          | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def create_payment_instrument_groups(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.BalancePlatform.PaymentInstrumentGroups, :create_payment_instrument_groups},
      url: "/paymentInstrumentGroups",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.BalancePlatform.PaymentInstrumentGroupInfo, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.PaymentInstrumentGroup, :t}},
        {400, {Adyen.BalancePlatform.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
