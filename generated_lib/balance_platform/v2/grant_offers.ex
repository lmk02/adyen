defmodule Adyen.BalancePlatform.V2.GrantOffers do
  @moduledoc """
  Provides API endpoints related to grant offers
  """

  @default_client Adyen.Client

  @doc """
  Get all available grant offers

  Returns a list of all [grant offers](https://docs.adyen.com/platforms/capital#grant-offers) available for `accountHolderId` specified as a query parameter.

  ## Options

    * `accountHolderId`: The unique identifier of the grant account.

  """
  @spec get_grant_offers(opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.V2.GrantOffers.t()}
          | {:error, Adyen.BalancePlatform.V2.RestServiceError.t()}
  def get_grant_offers(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:accountHolderId])

    client.request(%{
      args: [],
      call: {Adyen.BalancePlatform.V2.GrantOffers, :get_grant_offers},
      url: "/grantOffers",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.BalancePlatform.V2.GrantOffers, :t}},
        {400, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.V2.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a grant offer

  Returns the details of a single grant offer.
  """
  @spec get_grant_offers_grant_offer_id(grantOfferId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.V2.GrantOffer.t()}
          | {:error, Adyen.BalancePlatform.V2.RestServiceError.t()}
  def get_grant_offers_grant_offer_id(grantOfferId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [grantOfferId: grantOfferId],
      call: {Adyen.BalancePlatform.V2.GrantOffers, :get_grant_offers_grant_offer_id},
      url: "/grantOffers/#{grantOfferId}",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.V2.GrantOffer, :t}},
        {400, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {401, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.V2.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @type t :: %__MODULE__{grantOffers: [Adyen.BalancePlatform.V2.GrantOffer.t()]}

  defstruct [:grantOffers]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [grantOffers: [{Adyen.BalancePlatform.V2.GrantOffer, :t}]]
  end
end
