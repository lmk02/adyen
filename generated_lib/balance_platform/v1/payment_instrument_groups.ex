defmodule Adyen.BalancePlatform.V1.PaymentInstrumentGroups do
  @moduledoc """
  Provides API endpoints related to payment instrument groups
  """

  @default_client Adyen.Client

  @doc """
  Get a payment instrument group

  Returns the details of a payment instrument group.
  """
  @spec get_payment_instrument_groups_id(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.V1.PaymentInstrumentGroup.t()}
          | {:error, Adyen.BalancePlatform.V1.RestServiceError.t()}
  def get_payment_instrument_groups_id(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.BalancePlatform.V1.PaymentInstrumentGroups, :get_payment_instrument_groups_id},
      url: "/paymentInstrumentGroups/#{id}",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.V1.PaymentInstrumentGroup, :t}},
        {400, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.V1.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get all transaction rules for a payment instrument group

  Returns a list of all the transaction rules associated with a payment instrument group.
  """
  @spec get_payment_instrument_groups_id_transaction_rules(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.V1.TransactionRulesResponse.t()}
          | {:error, Adyen.BalancePlatform.V1.RestServiceError.t()}
  def get_payment_instrument_groups_id_transaction_rules(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call:
        {Adyen.BalancePlatform.V1.PaymentInstrumentGroups,
         :get_payment_instrument_groups_id_transaction_rules},
      url: "/paymentInstrumentGroups/#{id}/transactionRules",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.V1.TransactionRulesResponse, :t}},
        {400, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.V1.RestServiceError, :t}}
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
  @spec post_payment_instrument_groups(
          body :: Adyen.BalancePlatform.V1.PaymentInstrumentGroupInfo.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.V1.PaymentInstrumentGroup.t()}
          | {:error, Adyen.BalancePlatform.V1.RestServiceError.t()}
  def post_payment_instrument_groups(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.BalancePlatform.V1.PaymentInstrumentGroups, :post_payment_instrument_groups},
      url: "/paymentInstrumentGroups",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.BalancePlatform.V1.PaymentInstrumentGroupInfo, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.V1.PaymentInstrumentGroup, :t}},
        {400, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.V1.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.V1.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
