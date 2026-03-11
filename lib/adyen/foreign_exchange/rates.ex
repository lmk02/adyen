defmodule Adyen.ForeignExchange.Rates do
  @moduledoc """
  Provides API endpoint related to rates
  """

  @default_client Adyen.Client

  @doc """
  Calculate amount in a different currency

  Returns the calculated amounts and rates required to convert the currency of a transaction.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_rates_calculate(
          body :: Adyen.ForeignExchange.CalculateRateRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.ForeignExchange.CalculateRateResponse.t()}
          | {:error, Adyen.ForeignExchange.DefaultErrorResponseEntity.t()}
  def post_rates_calculate(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.ForeignExchange.Rates, :post_rates_calculate},
      url: "/rates/calculate",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.ForeignExchange.CalculateRateRequest, :t}}],
      response: [
        {200, {Adyen.ForeignExchange.CalculateRateResponse, :t}},
        {401, {Adyen.ForeignExchange.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.ForeignExchange.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.ForeignExchange.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
