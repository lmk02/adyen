defmodule Adyen.BalanceControl.V2.BalancesOverview do
  @moduledoc """
  Provides API endpoints related to balances overview
  """

  @default_client Adyen.Client

  @doc """
  View the available balances for all merchant accounts under your company.

  Returns an array with details about the balances available for all merchant accounts under your company account. For each merchant account, the response returns the following:

  * **Available funds**: The funds in the merchant account that have been settled and are available for use.

  * **Pending balance**: The funds in the merchant account that have not been settled yet.

  * **Next payout amount**: The amount that will be settled to your bank account with the next payout.

  * **Reserve**: The available amount to cover refunds, payouts, chargebacks, and other operational expenses that cannot be covered by your in-process funds.

  * **Deposit**: The amount withheld by Adyen to cover potential losses and liabilities due to payment processing.

  ## Options

    * `currency`: The currency for which you want a balances overview.

  """
  @spec get_balance_overview_companies_company_account_code_balances(
          companyAccountCode :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalanceControl.V2.CompanyBalances.t()}
          | {:error, Adyen.BalanceControl.V2.DefaultErrorResponseEntity.t()}
  def get_balance_overview_companies_company_account_code_balances(companyAccountCode, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:currency])

    client.request(%{
      args: [companyAccountCode: companyAccountCode],
      call:
        {Adyen.BalanceControl.V2.BalancesOverview,
         :get_balance_overview_companies_company_account_code_balances},
      url: "/balanceOverview/companies/#{companyAccountCode}/balances",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.BalanceControl.V2.CompanyBalances, :t}},
        {401, {Adyen.BalanceControl.V2.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.BalanceControl.V2.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.BalanceControl.V2.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  View all balances available for your merchant account.

  Returns an overview of the different balances available for the merchant account. This includes details about the following:

  * **Available funds**: The funds in the merchant account that have been settled and are available for use.

  * **Pending balance**: The funds in the merchant account that have not been settled yet.

  * **Next payout amount**: The amount that will be settled to your bank account with the next payout.

  * **Reserve**: The available amount to cover refunds, payouts, chargebacks, and other operational expenses that cannot be covered by your in-process funds.

  * **Deposit**: The amount withheld by Adyen to cover potential losses and liabilities due to payment processing.

  ## Options

    * `currency`: The currency for which you want a balances overview.

  """
  @spec get_balance_overview_merchants_merchant_account_code_balances(
          merchantAccountCode :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalanceControl.V2.MerchantBalance.t()}
          | {:error, Adyen.BalanceControl.V2.DefaultErrorResponseEntity.t()}
  def get_balance_overview_merchants_merchant_account_code_balances(
        merchantAccountCode,
        opts \\ []
      ) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:currency])

    client.request(%{
      args: [merchantAccountCode: merchantAccountCode],
      call:
        {Adyen.BalanceControl.V2.BalancesOverview,
         :get_balance_overview_merchants_merchant_account_code_balances},
      url: "/balanceOverview/merchants/#{merchantAccountCode}/balances",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.BalanceControl.V2.MerchantBalance, :t}},
        {401, {Adyen.BalanceControl.V2.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.BalanceControl.V2.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.BalanceControl.V2.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
