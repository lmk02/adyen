defmodule Adyen.ForeignExchange.V1.Rates do
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
          body :: Adyen.ForeignExchange.V1.CalculateRateRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.ForeignExchange.V1.CalculateRateResponse.t()}
          | {:error, Adyen.ForeignExchange.V1.DefaultErrorResponseEntity.t()}
  def post_rates_calculate(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.ForeignExchange.V1.Rates, :post_rates_calculate},
      url: "/rates/calculate",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.ForeignExchange.V1.CalculateRateRequest, :t}}],
      response: [
        {200, {Adyen.ForeignExchange.V1.CalculateRateResponse, :t}},
        {401, {Adyen.ForeignExchange.V1.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.ForeignExchange.V1.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.ForeignExchange.V1.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
