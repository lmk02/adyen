defmodule Adyen.BalancePlatform.GrantOffers do
  @moduledoc """
  Provides API endpoints related to grant offers
  """

  alias Adyen.BalancePlatform.GrantOffer
  alias Adyen.BalancePlatform.GrantOffers
  alias Adyen.BalancePlatform.RestServiceError

  @default_client Adyen.Client

  @doc """
  Get all available grant offers

  Returns a list of all [grant offers](https://docs.adyen.com/platforms/capital#grant-offers) available for `accountHolderId` specified as a query parameter.

  ## Options

    * `accountHolderId`: The unique identifier of the grant account.

  """
  @spec get_grant_offers(opts :: keyword) ::
          {:ok, GrantOffers.t()}
          | {:error, RestServiceError.t()}
  def get_grant_offers(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:accountHolderId])

    client.request(%{
      args: [],
      call: {GrantOffers, :get_grant_offers},
      url: "/grantOffers",
      method: :get,
      query: query,
      response: [
        {200, {GrantOffers, :t}},
        {400, {RestServiceError, :t}},
        {401, {RestServiceError, :t}},
        {403, {RestServiceError, :t}},
        {422, {RestServiceError, :t}},
        {500, {RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a grant offer

  Returns the details of a single grant offer.
  """
  @spec get_grant_offers_grant_offer(grantOfferId :: String.t(), opts :: keyword) ::
          {:ok, GrantOffer.t()}
          | {:error, RestServiceError.t()}
  def get_grant_offers_grant_offer(grantOfferId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [grantOfferId: grantOfferId],
      call: {GrantOffers, :get_grant_offers_grant_offer},
      url: "/grantOffers/#{grantOfferId}",
      method: :get,
      response: [
        {200, {GrantOffer, :t}},
        {400, {RestServiceError, :t}},
        {401, {RestServiceError, :t}},
        {403, {RestServiceError, :t}},
        {422, {RestServiceError, :t}},
        {500, {RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @type t :: %__MODULE__{grantOffers: [GrantOffer.t()]}

  defstruct [:grantOffers]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [grantOffers: [{GrantOffer, :t}]]
  end
end
