defmodule Adyen.BalancePlatform.AuthorizedCardUsers do
  @moduledoc """
  Provides API endpoints related to authorized card users
  """

  alias Adyen.BalancePlatform.AuthorisedCardUsers
  alias Adyen.BalancePlatform.AuthorizedCardUsers
  alias Adyen.BalancePlatform.DefaultErrorResponseEntity

  @default_client Adyen.Client

  @doc """
  Delete the authorized users for a card.

  Deletes the list of authorized users assigned to a card.
  """
  @spec delete_payment_instruments_payment_instrument_id_authorised_card_users(
          paymentInstrumentId :: String.t(),
          opts :: keyword
        ) :: :ok | {:error, DefaultErrorResponseEntity.t()}
  def delete_payment_instruments_payment_instrument_id_authorised_card_users(paymentInstrumentId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [paymentInstrumentId: paymentInstrumentId],
      call: {AuthorizedCardUsers, :delete_payment_instruments_payment_instrument_id_authorised_card_users},
      url: "/paymentInstruments/#{paymentInstrumentId}/authorisedCardUsers",
      method: :delete,
      response: [
        {204, :null},
        {401, {DefaultErrorResponseEntity, :t}},
        {403, {DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get authorized users for a card.

  Returns the authorized users for a card.
  """
  @spec get_payment_instruments_payment_instrument_id_authorised_card_users(
          paymentInstrumentId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, AuthorisedCardUsers.t()}
          | {:error, DefaultErrorResponseEntity.t()}
  def get_payment_instruments_payment_instrument_id_authorised_card_users(paymentInstrumentId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [paymentInstrumentId: paymentInstrumentId],
      call: {AuthorizedCardUsers, :get_payment_instruments_payment_instrument_id_authorised_card_users},
      url: "/paymentInstruments/#{paymentInstrumentId}/authorisedCardUsers",
      method: :get,
      response: [
        {200, {AuthorisedCardUsers, :t}},
        {401, {DefaultErrorResponseEntity, :t}},
        {403, {DefaultErrorResponseEntity, :t}},
        {404, {DefaultErrorResponseEntity, :t}},
        {422, {DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update the authorized users for a card.

  Updates the list of authorized users for a card.

  >This request replaces all existing authorized users for the card.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec update_payment_instruments_payment_instrument_id_authorised_card_users(
          paymentInstrumentId :: String.t(),
          body :: AuthorisedCardUsers.t(),
          opts :: keyword
        ) :: :ok | {:error, DefaultErrorResponseEntity.t()}
  def update_payment_instruments_payment_instrument_id_authorised_card_users(paymentInstrumentId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [paymentInstrumentId: paymentInstrumentId, body: body],
      call: {AuthorizedCardUsers, :update_payment_instruments_payment_instrument_id_authorised_card_users},
      url: "/paymentInstruments/#{paymentInstrumentId}/authorisedCardUsers",
      body: body,
      method: :patch,
      request: [{"application/json", {AuthorisedCardUsers, :t}}],
      response: [
        {204, :null},
        {400, {DefaultErrorResponseEntity, :t}},
        {401, {DefaultErrorResponseEntity, :t}},
        {403, {DefaultErrorResponseEntity, :t}},
        {422, {DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create authorized users for a card.

  Assigns authorized users to a card. Users must have the **authorisedPaymentInstrumentUser** capability to be able to use the card.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec create_payment_instruments_payment_instrument_id_authorised_card_users(
          paymentInstrumentId :: String.t(),
          body :: AuthorisedCardUsers.t(),
          opts :: keyword
        ) :: :ok | {:error, DefaultErrorResponseEntity.t()}
  def create_payment_instruments_payment_instrument_id_authorised_card_users(paymentInstrumentId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [paymentInstrumentId: paymentInstrumentId, body: body],
      call: {AuthorizedCardUsers, :create_payment_instruments_payment_instrument_id_authorised_card_users},
      url: "/paymentInstruments/#{paymentInstrumentId}/authorisedCardUsers",
      body: body,
      method: :post,
      request: [{"application/json", {AuthorisedCardUsers, :t}}],
      response: [
        {204, :null},
        {400, {DefaultErrorResponseEntity, :t}},
        {401, {DefaultErrorResponseEntity, :t}},
        {403, {DefaultErrorResponseEntity, :t}},
        {422, {DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
