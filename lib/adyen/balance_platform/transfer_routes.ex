defmodule Adyen.BalancePlatform.TransferRoutes do
  @moduledoc """
  Provides API endpoint related to transfer routes
  """

  @default_client Adyen.Client

  @doc """
  Calculate transfer routes

  Returns available transfer routes based on a combination of transfer `country`, `currency`, `counterparty`, and `priorities`. Use this endpoint to find optimal transfer priorities and associated requirements before you [make a transfer](https://docs.adyen.com/api-explorer/transfers/latest/post/transfers).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_transfer_routes_calculate(
          body :: Adyen.BalancePlatform.TransferRouteRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.TransferRouteResponse.t()}
          | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def post_transfer_routes_calculate(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.BalancePlatform.TransferRoutes, :post_transfer_routes_calculate},
      url: "/transferRoutes/calculate",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.BalancePlatform.TransferRouteRequest, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.TransferRouteResponse, :t}},
        {401, {Adyen.BalancePlatform.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
