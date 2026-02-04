defmodule Adyen.BalancePlatform.AuthorizedCardUsers do
  @moduledoc """
  Provides API endpoints related to authorized card users
  """

  @default_client Adyen.Client

  @doc """
  Delete the authorized users for a card.

  Deletes the list of authorized users assigned to a card.
  """
  @spec delete_payment_instruments_payment_instrument_id_authorised_card_users(
          paymentInstrumentId :: String.t(),
          opts :: keyword
        ) :: :ok | {:error, Adyen.BalancePlatform.DefaultErrorResponseEntity.t()}
  def delete_payment_instruments_payment_instrument_id_authorised_card_users(
        paymentInstrumentId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [paymentInstrumentId: paymentInstrumentId],
      call:
        {Adyen.BalancePlatform.AuthorizedCardUsers,
         :delete_payment_instruments_payment_instrument_id_authorised_card_users},
      url: "/paymentInstruments/#{paymentInstrumentId}/authorisedCardUsers",
      method: :delete,
      response: [
        {204, :null},
        {401, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}}
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
          {:ok, Adyen.BalancePlatform.AuthorisedCardUsers.t()}
          | {:error, Adyen.BalancePlatform.DefaultErrorResponseEntity.t()}
  def get_payment_instruments_payment_instrument_id_authorised_card_users(
        paymentInstrumentId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [paymentInstrumentId: paymentInstrumentId],
      call:
        {Adyen.BalancePlatform.AuthorizedCardUsers,
         :get_payment_instruments_payment_instrument_id_authorised_card_users},
      url: "/paymentInstruments/#{paymentInstrumentId}/authorisedCardUsers",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.AuthorisedCardUsers, :t}},
        {401, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {404, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}}
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
          body :: Adyen.BalancePlatform.AuthorisedCardUsers.t(),
          opts :: keyword
        ) :: :ok | {:error, Adyen.BalancePlatform.DefaultErrorResponseEntity.t()}
  def update_payment_instruments_payment_instrument_id_authorised_card_users(
        paymentInstrumentId,
        body,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [paymentInstrumentId: paymentInstrumentId, body: body],
      call:
        {Adyen.BalancePlatform.AuthorizedCardUsers,
         :update_payment_instruments_payment_instrument_id_authorised_card_users},
      url: "/paymentInstruments/#{paymentInstrumentId}/authorisedCardUsers",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.BalancePlatform.AuthorisedCardUsers, :t}}],
      response: [
        {204, :null},
        {400, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}}
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
          body :: Adyen.BalancePlatform.AuthorisedCardUsers.t(),
          opts :: keyword
        ) :: :ok | {:error, Adyen.BalancePlatform.DefaultErrorResponseEntity.t()}
  def create_payment_instruments_payment_instrument_id_authorised_card_users(
        paymentInstrumentId,
        body,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [paymentInstrumentId: paymentInstrumentId, body: body],
      call:
        {Adyen.BalancePlatform.AuthorizedCardUsers,
         :create_payment_instruments_payment_instrument_id_authorised_card_users},
      url: "/paymentInstruments/#{paymentInstrumentId}/authorisedCardUsers",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.BalancePlatform.AuthorisedCardUsers, :t}}],
      response: [
        {204, :null},
        {400, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.BalancePlatform.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
