defmodule Adyen.BalanceControl.V1.General do
  @moduledoc """
  Provides API endpoint related to general
  """

  @default_client Adyen.Client

  @doc """
  Start a balance transfer

  Starts a balance transfer request between merchant accounts. The following conditions must be met before you can successfully transfer balances:

  * The source and destination merchant accounts must be under the same company account and legal entity.

  * The source merchant account must have sufficient funds.

  * The source and destination merchant accounts must have at least one common processing currency.

  When sending multiple API requests with the same source and destination merchant accounts, send the requests sequentially and *not* in parallel. Some requests may not be processed if the requests are sent in parallel.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_balance_transfer(
          body :: Adyen.BalanceControl.V1.BalanceTransferRequest.t(),
          opts :: keyword
        ) :: {:ok, Adyen.BalanceControl.V1.BalanceTransferResponse.t()} | :error
  def post_balance_transfer(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.BalanceControl.V1.General, :post_balance_transfer},
      url: "/balanceTransfer",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.BalanceControl.V1.BalanceTransferRequest, :t}}],
      response: [{200, {Adyen.BalanceControl.V1.BalanceTransferResponse, :t}}],
      opts: opts
    })
  end
end
