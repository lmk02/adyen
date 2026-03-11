defmodule Adyen.Fund.V5.General do
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
          body :: Adyen.Fund.V5.AccountHolderBalanceRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Fund.V5.AccountHolderBalanceResponse.t()}
          | {:error, Adyen.Fund.V5.ServiceError.t()}
  def post_account_holder_balance(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Fund.V5.General, :post_account_holder_balance},
      url: "/accountHolderBalance",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Fund.V5.AccountHolderBalanceRequest, :t}}],
      response: [
        {200, {Adyen.Fund.V5.AccountHolderBalanceResponse, :t}},
        {202, {Adyen.Fund.V5.AccountHolderBalanceResponse, :t}},
        {400, {Adyen.Fund.V5.ServiceError, :t}},
        {401, {Adyen.Fund.V5.ServiceError, :t}},
        {403, {Adyen.Fund.V5.ServiceError, :t}},
        {422, {Adyen.Fund.V5.ServiceError, :t}},
        {500, {Adyen.Fund.V5.ServiceError, :t}}
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
          body :: Adyen.Fund.V5.AccountHolderTransactionListRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Fund.V5.AccountHolderTransactionListResponse.t()}
          | {:error, Adyen.Fund.V5.ServiceError.t()}
  def post_account_holder_transaction_list(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Fund.V5.General, :post_account_holder_transaction_list},
      url: "/accountHolderTransactionList",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Fund.V5.AccountHolderTransactionListRequest, :t}}],
      response: [
        {200, {Adyen.Fund.V5.AccountHolderTransactionListResponse, :t}},
        {202, {Adyen.Fund.V5.AccountHolderTransactionListResponse, :t}},
        {400, {Adyen.Fund.V5.ServiceError, :t}},
        {401, {Adyen.Fund.V5.ServiceError, :t}},
        {403, {Adyen.Fund.V5.ServiceError, :t}},
        {422, {Adyen.Fund.V5.ServiceError, :t}},
        {500, {Adyen.Fund.V5.ServiceError, :t}}
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
          body :: Adyen.Fund.V5.DebitAccountHolderRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Fund.V5.DebitAccountHolderResponse.t()}
          | {:error, Adyen.Fund.V5.ServiceError.t()}
  def post_debit_account_holder(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Fund.V5.General, :post_debit_account_holder},
      url: "/debitAccountHolder",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Fund.V5.DebitAccountHolderRequest, :t}}],
      response: [
        {200, {Adyen.Fund.V5.DebitAccountHolderResponse, :t}},
        {202, {Adyen.Fund.V5.DebitAccountHolderResponse, :t}},
        {400, {Adyen.Fund.V5.ServiceError, :t}},
        {401, {Adyen.Fund.V5.ServiceError, :t}},
        {403, {Adyen.Fund.V5.ServiceError, :t}},
        {422, {Adyen.Fund.V5.ServiceError, :t}},
        {500, {Adyen.Fund.V5.ServiceError, :t}}
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
          body :: Adyen.Fund.V5.PayoutAccountHolderRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Fund.V5.PayoutAccountHolderResponse.t()}
          | {:error, Adyen.Fund.V5.ServiceError.t()}
  def post_payout_account_holder(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Fund.V5.General, :post_payout_account_holder},
      url: "/payoutAccountHolder",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Fund.V5.PayoutAccountHolderRequest, :t}}],
      response: [
        {200, {Adyen.Fund.V5.PayoutAccountHolderResponse, :t}},
        {202, {Adyen.Fund.V5.PayoutAccountHolderResponse, :t}},
        {400, {Adyen.Fund.V5.ServiceError, :t}},
        {401, {Adyen.Fund.V5.ServiceError, :t}},
        {403, {Adyen.Fund.V5.ServiceError, :t}},
        {422, {Adyen.Fund.V5.ServiceError, :t}},
        {500, {Adyen.Fund.V5.ServiceError, :t}}
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
          body :: Adyen.Fund.V5.RefundFundsTransferRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Fund.V5.RefundFundsTransferResponse.t()}
          | {:error, Adyen.Fund.V5.ServiceError.t()}
  def post_refund_funds_transfer(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Fund.V5.General, :post_refund_funds_transfer},
      url: "/refundFundsTransfer",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Fund.V5.RefundFundsTransferRequest, :t}}],
      response: [
        {200, {Adyen.Fund.V5.RefundFundsTransferResponse, :t}},
        {202, {Adyen.Fund.V5.RefundFundsTransferResponse, :t}},
        {400, {Adyen.Fund.V5.ServiceError, :t}},
        {401, {Adyen.Fund.V5.ServiceError, :t}},
        {403, {Adyen.Fund.V5.ServiceError, :t}},
        {422, {Adyen.Fund.V5.ServiceError, :t}},
        {500, {Adyen.Fund.V5.ServiceError, :t}}
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
          body :: Adyen.Fund.V5.RefundNotPaidOutTransfersRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Fund.V5.RefundNotPaidOutTransfersResponse.t()}
          | {:error, Adyen.Fund.V5.ServiceError.t()}
  def post_refund_not_paid_out_transfers(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Fund.V5.General, :post_refund_not_paid_out_transfers},
      url: "/refundNotPaidOutTransfers",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Fund.V5.RefundNotPaidOutTransfersRequest, :t}}],
      response: [
        {200, {Adyen.Fund.V5.RefundNotPaidOutTransfersResponse, :t}},
        {202, {Adyen.Fund.V5.RefundNotPaidOutTransfersResponse, :t}},
        {400, {Adyen.Fund.V5.ServiceError, :t}},
        {401, {Adyen.Fund.V5.ServiceError, :t}},
        {403, {Adyen.Fund.V5.ServiceError, :t}},
        {422, {Adyen.Fund.V5.ServiceError, :t}},
        {500, {Adyen.Fund.V5.ServiceError, :t}}
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
  @spec post_setup_beneficiary(body :: Adyen.Fund.V5.SetupBeneficiaryRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Fund.V5.SetupBeneficiaryResponse.t()}
          | {:error, Adyen.Fund.V5.ServiceError.t()}
  def post_setup_beneficiary(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Fund.V5.General, :post_setup_beneficiary},
      url: "/setupBeneficiary",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Fund.V5.SetupBeneficiaryRequest, :t}}],
      response: [
        {200, {Adyen.Fund.V5.SetupBeneficiaryResponse, :t}},
        {202, {Adyen.Fund.V5.SetupBeneficiaryResponse, :t}},
        {400, {Adyen.Fund.V5.ServiceError, :t}},
        {401, {Adyen.Fund.V5.ServiceError, :t}},
        {403, {Adyen.Fund.V5.ServiceError, :t}},
        {422, {Adyen.Fund.V5.ServiceError, :t}},
        {500, {Adyen.Fund.V5.ServiceError, :t}}
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
  @spec post_transfer_funds(body :: Adyen.Fund.V5.TransferFundsRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Fund.V5.TransferFundsResponse.t()}
          | {:error, Adyen.Fund.V5.ServiceError.t()}
  def post_transfer_funds(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Fund.V5.General, :post_transfer_funds},
      url: "/transferFunds",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Fund.V5.TransferFundsRequest, :t}}],
      response: [
        {200, {Adyen.Fund.V5.TransferFundsResponse, :t}},
        {202, {Adyen.Fund.V5.TransferFundsResponse, :t}},
        {400, {Adyen.Fund.V5.ServiceError, :t}},
        {401, {Adyen.Fund.V5.ServiceError, :t}},
        {403, {Adyen.Fund.V5.ServiceError, :t}},
        {422, {Adyen.Fund.V5.ServiceError, :t}},
        {500, {Adyen.Fund.V5.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
