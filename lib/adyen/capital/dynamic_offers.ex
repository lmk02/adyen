defmodule Adyen.Capital.DynamicOffers do
  @moduledoc """
  Provides API endpoints related to dynamic offers
  """

  @default_client Adyen.Client

  @doc """
  Get all available dynamic offers

  Returns a list of all [dynamic offers](https://docs.adyen.com/capital/get-grant-offers/dynamic-offers/) available for `accountHolderId` specified as a query parameter.

  ## Options

    * `accountHolderId`: The unique identifier of the account holder that the dynamic offer is for.
    * `financingType`: The type of financing that the offer is for. If the value is not specified, returns all available types.
      
      Possible values: **businessFinancing**

  """
  @spec get_dynamic_offers(opts :: keyword) ::
          {:ok, Adyen.Capital.GetDynamicOffersResponse.t()}
          | {:error, Adyen.Capital.DefaultErrorResponseEntity.t()}
  def get_dynamic_offers(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:accountHolderId, :financingType])

    client.request(%{
      args: [],
      call: {Adyen.Capital.DynamicOffers, :get_dynamic_offers},
      url: "/dynamicOffers",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.Capital.GetDynamicOffersResponse, :t}},
        {422, {Adyen.Capital.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Calculate a preliminary offer for a selected financing amount

  Calculates a preliminary offer for the financing amount that the user selected from a [dynamic offer](https://docs.adyen.com/capital/get-grant-offers/dynamic-offers/). The preliminary offer is for informational purposes only and cannot be used to initiate a grant.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 120 requests per minute.

  - Test environments: 120 requests per minute.


  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_dynamic_offers_id_calculate(
          id :: String.t(),
          body :: Adyen.Capital.CalculateGrantOfferRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Capital.CalculatedGrantOffer.t()}
          | {:error, Adyen.Capital.DefaultErrorResponseEntity.t()}
  def post_dynamic_offers_id_calculate(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call: {Adyen.Capital.DynamicOffers, :post_dynamic_offers_id_calculate},
      url: "/dynamicOffers/#{id}/calculate",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Capital.CalculateGrantOfferRequest, :t}}],
      response: [
        {200, {Adyen.Capital.CalculatedGrantOffer, :t}},
        {422, {Adyen.Capital.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create a static offer for a selected financing amount

  Creates a static offer for the financing amount that the user selected from the [dynamic offer](https://docs.adyen.com/capital/get-grant-offers/dynamic-offers/).

  Requests to this endpoint are subject to rate limits:

  - Live environments: 30 requests per minute.

  - Test environments: 30 requests per minute.


  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_dynamic_offers_id_grant_offer(
          id :: String.t(),
          body :: Adyen.Capital.CreateGrantOfferRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Capital.GrantOffer.t()}
          | {:error, Adyen.Capital.DefaultErrorResponseEntity.t()}
  def post_dynamic_offers_id_grant_offer(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call: {Adyen.Capital.DynamicOffers, :post_dynamic_offers_id_grant_offer},
      url: "/dynamicOffers/#{id}/grantOffer",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Capital.CreateGrantOfferRequest, :t}}],
      response: [
        {200, {Adyen.Capital.GrantOffer, :t}},
        {422, {Adyen.Capital.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
