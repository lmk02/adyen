defmodule Adyen.BalancePlatform.TransactionRules do
  @moduledoc """
  Provides API endpoints related to transaction rules
  """

  alias Adyen.BalancePlatform.RestServiceError
  alias Adyen.BalancePlatform.TransactionRule
  alias Adyen.BalancePlatform.TransactionRuleInfo
  alias Adyen.BalancePlatform.TransactionRuleResponse
  alias Adyen.BalancePlatform.TransactionRules

  @default_client Adyen.Client

  @doc """
  Delete a transaction rule

  Deletes a transaction rule.
  """
  @spec delete_transaction_rules_transaction_rule(
          transactionRuleId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, TransactionRule.t()}
          | {:error, RestServiceError.t()}
  def delete_transaction_rules_transaction_rule(transactionRuleId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [transactionRuleId: transactionRuleId],
      call: {TransactionRules, :delete_transaction_rules_transaction_rule},
      url: "/transactionRules/#{transactionRuleId}",
      method: :delete,
      response: [
        {200, {TransactionRule, :t}},
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
  Get a transaction rule

  Returns the details of a transaction rule.
  """
  @spec get_transaction_rules_transaction_rule(
          transactionRuleId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, TransactionRuleResponse.t()}
          | {:error, RestServiceError.t()}
  def get_transaction_rules_transaction_rule(transactionRuleId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [transactionRuleId: transactionRuleId],
      call: {TransactionRules, :get_transaction_rules_transaction_rule},
      url: "/transactionRules/#{transactionRuleId}",
      method: :get,
      response: [
        {200, {TransactionRuleResponse, :t}},
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
  Update a transaction rule

  Updates a transaction rule. 

  * To update only the status of a transaction rule, send only the `status` parameter. All other parameters not provided in the request are left unchanged.

  * When updating any other parameter, you need to send all existing resource parameters. If you omit a parameter in the request, that parameter is removed from the resource.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec update_transaction_rules_transaction_rule(
          transactionRuleId :: String.t(),
          body :: TransactionRuleInfo.t(),
          opts :: keyword
        ) ::
          {:ok, TransactionRule.t()}
          | {:error, RestServiceError.t()}
  def update_transaction_rules_transaction_rule(transactionRuleId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [transactionRuleId: transactionRuleId, body: body],
      call: {TransactionRules, :update_transaction_rules_transaction_rule},
      url: "/transactionRules/#{transactionRuleId}",
      body: body,
      method: :patch,
      request: [{"application/json", {TransactionRuleInfo, :t}}],
      response: [
        {200, {TransactionRule, :t}},
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
  Create a transaction rule

  Creates a [transaction rule](https://docs.adyen.com/issuing/transaction-rules). When your user makes a transaction with their Adyen-issued card, the transaction is allowed or declined based on the conditions and outcome defined in the transaction rule. You can apply the transaction rule to several cards, such as all the cards in your platform, or to a specific card. For use cases, see [examples](https://docs.adyen.com/issuing/transaction-rules/examples).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec create_transaction_rules(
          body :: TransactionRuleInfo.t(),
          opts :: keyword
        ) ::
          {:ok, TransactionRule.t()}
          | {:error, RestServiceError.t()}
  def create_transaction_rules(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {TransactionRules, :create_transaction_rules},
      url: "/transactionRules",
      body: body,
      method: :post,
      request: [{"application/json", {TransactionRuleInfo, :t}}],
      response: [
        {200, {TransactionRule, :t}},
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
