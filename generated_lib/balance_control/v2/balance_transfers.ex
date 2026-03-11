defmodule Adyen.BalanceControl.V2.BalanceTransfers do
  @moduledoc """
  Provides API endpoint related to balance transfers
  """

  @default_client Adyen.Client

  @doc """
  Performs a balance transfer

  Performs a balance transfer between merchant accounts. The following conditions must be met before you can successfully transfer balances:
  * The source and destination merchant accounts must be under the same company account and legal entity.
  * The source merchant account must have sufficient funds.
  * The source and destination merchant accounts must have at least one common processing currency.\n\n
  When sending multiple API requests with the same source and destination merchant accounts, send the requests sequentially and *not* in parallel. Some requests may not be processed if the requests are sent in parallel.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_balance_transfers(
          body :: Adyen.BalanceControl.V2.BalanceTransferRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalanceControl.V2.BalanceTransferResponse.t()}
          | {:error, Adyen.BalanceControl.V2.DefaultErrorResponseEntity.t()}
  def post_balance_transfers(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.BalanceControl.V2.BalanceTransfers, :post_balance_transfers},
      url: "/balanceTransfers",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.BalanceControl.V2.BalanceTransferRequest, :t}}],
      response: [
        {200, {Adyen.BalanceControl.V2.BalanceTransferResponse, :t}},
        {401, {Adyen.BalanceControl.V2.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.BalanceControl.V2.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
