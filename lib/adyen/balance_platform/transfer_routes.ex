defmodule Adyen.BalancePlatform.TransferRoutes do
  @moduledoc """
  Provides API endpoint related to transfer routes
  """

  alias Adyen.BalancePlatform.RestServiceError
  alias Adyen.BalancePlatform.TransferRouteRequest
  alias Adyen.BalancePlatform.TransferRouteResponse

  @default_client Adyen.Client

  @doc """
  Calculate transfer routes

  Returns available transfer routes based on a combination of transfer `country`, `currency`, `counterparty`, and `priorities`. Use this endpoint to find optimal transfer priorities and associated requirements before you [make a transfer](https://docs.adyen.com/api-explorer/transfers/latest/post/transfers).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec create_transfer_routes_calculate(
          body :: TransferRouteRequest.t(),
          opts :: keyword
        ) ::
          {:ok, TransferRouteResponse.t()}
          | {:error, RestServiceError.t()}
  def create_transfer_routes_calculate(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.BalancePlatform.TransferRoutes, :create_transfer_routes_calculate},
      url: "/transferRoutes/calculate",
      body: body,
      method: :post,
      request: [{"application/json", {TransferRouteRequest, :t}}],
      response: [
        {200, {TransferRouteResponse, :t}},
        {401, {RestServiceError, :t}},
        {403, {RestServiceError, :t}},
        {422, {RestServiceError, :t}},
        {500, {RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
