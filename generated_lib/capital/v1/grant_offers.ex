defmodule Adyen.Capital.V1.GrantOffers do
  @moduledoc """
  Provides API endpoints related to grant offers
  """

  @default_client Adyen.Client

  @doc """
  Get all available static offers

  Returns a list of all [static offers](https://docs.adyen.com/capital/get-grant-offers/static-offers) available for `accountHolderId` specified as a query parameter. This also includes static offers created for financing amounts that the user selected from [dynamic offers](https://docs.adyen.com/capital/get-grant-offers/dynamic-offers/).

  ## Options

    * `accountHolderId`: The unique identifier of the account holder for which you want to get the available static offers.

  """
  @spec get_grant_offers(opts :: keyword) ::
          {:ok, Adyen.Capital.V1.GrantOffers.t()}
          | {:error, Adyen.Capital.V1.DefaultErrorResponseEntity.t()}
  def get_grant_offers(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:accountHolderId])

    client.request(%{
      args: [],
      call: {Adyen.Capital.V1.GrantOffers, :get_grant_offers},
      url: "/grantOffers",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.Capital.V1.GrantOffers, :t}},
        {404, {Adyen.Capital.V1.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.Capital.V1.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get the details of a static offer

  Returns the details of the specified static offer.
  """
  @spec get_grant_offers_id(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Capital.V1.GrantOffer.t()}
          | {:error, Adyen.Capital.V1.DefaultErrorResponseEntity.t()}
  def get_grant_offers_id(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.Capital.V1.GrantOffers, :get_grant_offers_id},
      url: "/grantOffers/#{id}",
      method: :get,
      response: [
        {200, {Adyen.Capital.V1.GrantOffer, :t}},
        {404, {Adyen.Capital.V1.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.Capital.V1.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @type t :: %__MODULE__{grantOffers: [Adyen.Capital.V1.GrantOffer.t()]}

  defstruct [:grantOffers]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [grantOffers: [{Adyen.Capital.V1.GrantOffer, :t}]]
  end
end
