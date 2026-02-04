defmodule Adyen.BalancePlatform.TransactionRules do
  @moduledoc """
  Provides API endpoints related to transaction rules
  """

  @default_client Adyen.Client

  @doc """
  Delete a transaction rule

  Deletes a transaction rule.
  """
  @spec delete_transaction_rules_transaction_rule(
          transactionRuleId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.TransactionRule.t()}
          | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def delete_transaction_rules_transaction_rule(transactionRuleId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [transactionRuleId: transactionRuleId],
      call:
        {Adyen.BalancePlatform.TransactionRules, :delete_transaction_rules_transaction_rule},
      url: "/transactionRules/#{transactionRuleId}",
      method: :delete,
      response: [
        {200, {Adyen.BalancePlatform.TransactionRule, :t}},
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
  Get a transaction rule

  Returns the details of a transaction rule.
  """
  @spec get_transaction_rules_transaction_rule(
          transactionRuleId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.TransactionRuleResponse.t()}
          | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def get_transaction_rules_transaction_rule(transactionRuleId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [transactionRuleId: transactionRuleId],
      call: {Adyen.BalancePlatform.TransactionRules, :get_transaction_rules_transaction_rule},
      url: "/transactionRules/#{transactionRuleId}",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.TransactionRuleResponse, :t}},
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
  Update a transaction rule

  Updates a transaction rule. 

  * To update only the status of a transaction rule, send only the `status` parameter. All other parameters not provided in the request are left unchanged.

  * When updating any other parameter, you need to send all existing resource parameters. If you omit a parameter in the request, that parameter is removed from the resource.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec update_transaction_rules_transaction_rule(
          transactionRuleId :: String.t(),
          body :: Adyen.BalancePlatform.TransactionRuleInfo.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.TransactionRule.t()}
          | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def update_transaction_rules_transaction_rule(transactionRuleId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [transactionRuleId: transactionRuleId, body: body],
      call:
        {Adyen.BalancePlatform.TransactionRules, :update_transaction_rules_transaction_rule},
      url: "/transactionRules/#{transactionRuleId}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.BalancePlatform.TransactionRuleInfo, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.TransactionRule, :t}},
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
  Create a transaction rule

  Creates a [transaction rule](https://docs.adyen.com/issuing/transaction-rules). When your user makes a transaction with their Adyen-issued card, the transaction is allowed or declined based on the conditions and outcome defined in the transaction rule. You can apply the transaction rule to several cards, such as all the cards in your platform, or to a specific card. For use cases, see [examples](https://docs.adyen.com/issuing/transaction-rules/examples).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec create_transaction_rules(
          body :: Adyen.BalancePlatform.TransactionRuleInfo.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.TransactionRule.t()}
          | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def create_transaction_rules(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.BalancePlatform.TransactionRules, :create_transaction_rules},
      url: "/transactionRules",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.BalancePlatform.TransactionRuleInfo, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.TransactionRule, :t}},
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
