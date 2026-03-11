defmodule Adyen.Funds.General do
  @moduledoc """
  Provides API endpoints related to general
  """

  @default_client Adyen.Client

  @doc """
  Get the balances of an account holder

  Returns the account balances of an account holder. An account's balances are organized according by currencies. This mean that an account may have multiple balances: one for each currency.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_account_holder_balance(
          body :: Adyen.Funds.AccountHolderBalanceRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Funds.AccountHolderBalanceResponse.t()}
          | {:error, Adyen.Funds.ServiceError.t()}
  def post_account_holder_balance(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Funds.General, :post_account_holder_balance},
      url: "/accountHolderBalance",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Funds.AccountHolderBalanceRequest, :t}}],
      response: [
        {200, {Adyen.Funds.AccountHolderBalanceResponse, :t}},
        {202, {Adyen.Funds.AccountHolderBalanceResponse, :t}},
        {400, {Adyen.Funds.ServiceError, :t}},
        {401, {Adyen.Funds.ServiceError, :t}},
        {403, {Adyen.Funds.ServiceError, :t}},
        {422, {Adyen.Funds.ServiceError, :t}},
        {500, {Adyen.Funds.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a list of transactions

  Returns a list of transactions for an account holder's accounts. You can specify the accounts and transaction statuses to be included on the list. The call returns a maximum of 50 transactions for each account. To retrieve all transactions, you must make another call with the 'page' value incremented. Transactions are listed in chronological order, with the most recent transaction first.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_account_holder_transaction_list(
          body :: Adyen.Funds.AccountHolderTransactionListRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Funds.AccountHolderTransactionListResponse.t()}
          | {:error, Adyen.Funds.ServiceError.t()}
  def post_account_holder_transaction_list(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Funds.General, :post_account_holder_transaction_list},
      url: "/accountHolderTransactionList",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Funds.AccountHolderTransactionListRequest, :t}}],
      response: [
        {200, {Adyen.Funds.AccountHolderTransactionListResponse, :t}},
        {202, {Adyen.Funds.AccountHolderTransactionListResponse, :t}},
        {400, {Adyen.Funds.ServiceError, :t}},
        {401, {Adyen.Funds.ServiceError, :t}},
        {403, {Adyen.Funds.ServiceError, :t}},
        {422, {Adyen.Funds.ServiceError, :t}},
        {500, {Adyen.Funds.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Send a direct debit request

  Sends a direct debit request to an account holder's bank account. If the direct debit is successful, the funds are settled in the accounts specified in the split instructions. Adyen sends the result of the direct debit in a [`DIRECT_DEBIT_INITIATED`](https://docs.adyen.com/api-explorer/#/NotificationService/latest/post/DIRECT_DEBIT_INITIATED) notification webhook.

   To learn more about direct debits, see [Top up accounts](https://docs.adyen.com/classic-platforms/top-up-accounts).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_debit_account_holder(
          body :: Adyen.Funds.DebitAccountHolderRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Funds.DebitAccountHolderResponse.t()}
          | {:error, Adyen.Funds.ServiceError.t()}
  def post_debit_account_holder(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Funds.General, :post_debit_account_holder},
      url: "/debitAccountHolder",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Funds.DebitAccountHolderRequest, :t}}],
      response: [
        {200, {Adyen.Funds.DebitAccountHolderResponse, :t}},
        {202, {Adyen.Funds.DebitAccountHolderResponse, :t}},
        {400, {Adyen.Funds.ServiceError, :t}},
        {401, {Adyen.Funds.ServiceError, :t}},
        {403, {Adyen.Funds.ServiceError, :t}},
        {422, {Adyen.Funds.ServiceError, :t}},
        {500, {Adyen.Funds.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Pay out from an account to the account holder

  Pays out a specified amount from an account to the bank account of account holder.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_payout_account_holder(
          body :: Adyen.Funds.PayoutAccountHolderRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Funds.PayoutAccountHolderResponse.t()}
          | {:error, Adyen.Funds.ServiceError.t()}
  def post_payout_account_holder(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Funds.General, :post_payout_account_holder},
      url: "/payoutAccountHolder",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Funds.PayoutAccountHolderRequest, :t}}],
      response: [
        {200, {Adyen.Funds.PayoutAccountHolderResponse, :t}},
        {202, {Adyen.Funds.PayoutAccountHolderResponse, :t}},
        {400, {Adyen.Funds.ServiceError, :t}},
        {401, {Adyen.Funds.ServiceError, :t}},
        {403, {Adyen.Funds.ServiceError, :t}},
        {422, {Adyen.Funds.ServiceError, :t}},
        {500, {Adyen.Funds.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Refund a funds transfer

  Refunds funds transferred from one account to another. Both accounts must be in the same platform, but can have different account holders. 

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_refund_funds_transfer(
          body :: Adyen.Funds.RefundFundsTransferRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Funds.RefundFundsTransferResponse.t()}
          | {:error, Adyen.Funds.ServiceError.t()}
  def post_refund_funds_transfer(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Funds.General, :post_refund_funds_transfer},
      url: "/refundFundsTransfer",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Funds.RefundFundsTransferRequest, :t}}],
      response: [
        {200, {Adyen.Funds.RefundFundsTransferResponse, :t}},
        {202, {Adyen.Funds.RefundFundsTransferResponse, :t}},
        {400, {Adyen.Funds.ServiceError, :t}},
        {401, {Adyen.Funds.ServiceError, :t}},
        {403, {Adyen.Funds.ServiceError, :t}},
        {422, {Adyen.Funds.ServiceError, :t}},
        {500, {Adyen.Funds.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Refund all transactions of an account since the most recent payout

  Refunds all the transactions of an account that have taken place since the most recent payout. This request is on a account basis (as opposed to a payment basis), so only the portion of the payment that was made to the specified account is refunded. The commissions, fees, and payments to other accounts remain in the accounts to which they were sent as designated by the original payment's split details.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_refund_not_paid_out_transfers(
          body :: Adyen.Funds.RefundNotPaidOutTransfersRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Funds.RefundNotPaidOutTransfersResponse.t()}
          | {:error, Adyen.Funds.ServiceError.t()}
  def post_refund_not_paid_out_transfers(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Funds.General, :post_refund_not_paid_out_transfers},
      url: "/refundNotPaidOutTransfers",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Funds.RefundNotPaidOutTransfersRequest, :t}}],
      response: [
        {200, {Adyen.Funds.RefundNotPaidOutTransfersResponse, :t}},
        {202, {Adyen.Funds.RefundNotPaidOutTransfersResponse, :t}},
        {400, {Adyen.Funds.ServiceError, :t}},
        {401, {Adyen.Funds.ServiceError, :t}},
        {403, {Adyen.Funds.ServiceError, :t}},
        {422, {Adyen.Funds.ServiceError, :t}},
        {500, {Adyen.Funds.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Designate a beneficiary account and transfer the benefactor's current balance

  Defines a benefactor and a beneficiary relationship between two accounts. At the time of benefactor/beneficiary setup, the funds in the benefactor account are transferred to the beneficiary account, and any further payments to the benefactor account are automatically sent to the beneficiary account. A series of benefactor/beneficiaries may not exceed four beneficiaries and may not have a cycle in it.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_setup_beneficiary(body :: Adyen.Funds.SetupBeneficiaryRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Funds.SetupBeneficiaryResponse.t()} | {:error, Adyen.Funds.ServiceError.t()}
  def post_setup_beneficiary(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Funds.General, :post_setup_beneficiary},
      url: "/setupBeneficiary",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Funds.SetupBeneficiaryRequest, :t}}],
      response: [
        {200, {Adyen.Funds.SetupBeneficiaryResponse, :t}},
        {202, {Adyen.Funds.SetupBeneficiaryResponse, :t}},
        {400, {Adyen.Funds.ServiceError, :t}},
        {401, {Adyen.Funds.ServiceError, :t}},
        {403, {Adyen.Funds.ServiceError, :t}},
        {422, {Adyen.Funds.ServiceError, :t}},
        {500, {Adyen.Funds.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Transfer funds between platform accounts

  Transfers funds from one account to another account. Both accounts must be in the same platform, but can have different account holders. The transfer must include a transfer code, which should be determined by the platform, in compliance with local regulations.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_transfer_funds(body :: Adyen.Funds.TransferFundsRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Funds.TransferFundsResponse.t()} | {:error, Adyen.Funds.ServiceError.t()}
  def post_transfer_funds(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Funds.General, :post_transfer_funds},
      url: "/transferFunds",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Funds.TransferFundsRequest, :t}}],
      response: [
        {200, {Adyen.Funds.TransferFundsResponse, :t}},
        {202, {Adyen.Funds.TransferFundsResponse, :t}},
        {400, {Adyen.Funds.ServiceError, :t}},
        {401, {Adyen.Funds.ServiceError, :t}},
        {403, {Adyen.Funds.ServiceError, :t}},
        {422, {Adyen.Funds.ServiceError, :t}},
        {500, {Adyen.Funds.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
