defmodule Adyen.Transfer.V1.Transfers do
  @moduledoc """
  Provides API endpoint related to transfers
  """

  @default_client Adyen.Client

  @doc """
  Transfer funds

  >Versions 1 and 2 of the Transfers API are deprecated. If you are just starting your implementation, use the latest version.

  Starts a transfer request to move funds within your balance platform, or send funds to a [transfer instrument](https://docs.adyen.com/api-explorer/#/legalentity/v1/post/transferInstruments). Adyen sends the outcome of the transfer request through webhooks.

  To use this endpoint, you need an additional role for your API credential and transfers must be enabled for the source balance account. Your Adyen contact will set these up for you.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_transfers(body :: Adyen.Transfer.V1.TransferInfoOld.t(), opts :: keyword) ::
          {:ok, Adyen.Transfer.V1.TransferOld.t()}
          | {:error,
             Adyen.Transfer.V1.ServiceError.t()
             | Adyen.Transfer.V1.TransferServiceRestServiceError.t()}
  def post_transfers(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Transfer.V1.Transfers, :post_transfers},
      url: "/transfers",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Transfer.V1.TransferInfoOld, :t}}],
      response: [
        {200, {Adyen.Transfer.V1.TransferOld, :t}},
        {401, {Adyen.Transfer.V1.ServiceError, :t}},
        {403, {Adyen.Transfer.V1.TransferServiceRestServiceError, :t}},
        {422, {Adyen.Transfer.V1.TransferServiceRestServiceError, :t}},
        {500, {Adyen.Transfer.V1.TransferServiceRestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
