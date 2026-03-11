defmodule Adyen.BalancePlatform.V1.TransferInstruments do
  @moduledoc """
  Provides API endpoints related to transfer instruments
  """

  @default_client Adyen.Client

  @doc """
  Delete a transfer instrument

  Deletes a transfer instrument.
  """
  @spec delete_transfer_instruments_id(id :: String.t(), opts :: keyword) ::
          :ok | {:error, Adyen.BalancePlatform.V1.ServiceError.t()}
  def delete_transfer_instruments_id(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.BalancePlatform.V1.TransferInstruments, :delete_transfer_instruments_id},
      url: "/transferInstruments/#{id}",
      method: :delete,
      response: [
        {204, :null},
        {400, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {401, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {403, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {422, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {500, {Adyen.BalancePlatform.V1.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a transfer instrument

  Returns the details of a transfer instrument.
  """
  @spec get_transfer_instruments_id(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.V1.TransferInstrument.t()}
          | {:error, Adyen.BalancePlatform.V1.ServiceError.t()}
  def get_transfer_instruments_id(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.BalancePlatform.V1.TransferInstruments, :get_transfer_instruments_id},
      url: "/transferInstruments/#{id}",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.V1.TransferInstrument, :t}},
        {400, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {401, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {403, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {422, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {500, {Adyen.BalancePlatform.V1.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update a transfer instrument

  Updates a transfer instrument.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_transfer_instruments_id(
          id :: String.t(),
          body :: Adyen.BalancePlatform.V1.TransferInstrumentInfo.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.V1.TransferInstrument.t()}
          | {:error, Adyen.BalancePlatform.V1.ServiceError.t()}
  def patch_transfer_instruments_id(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call: {Adyen.BalancePlatform.V1.TransferInstruments, :patch_transfer_instruments_id},
      url: "/transferInstruments/#{id}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.BalancePlatform.V1.TransferInstrumentInfo, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.V1.TransferInstrument, :t}},
        {400, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {401, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {403, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {422, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {500, {Adyen.BalancePlatform.V1.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create a transfer instrument

  Creates a transfer instrument. 

  A transfer instrument is a bank account that a legal entity owns. Adyen performs verification checks on the transfer instrument as required by payment industry regulations. We inform you of the verification results through webhooks or API responses.

  When the transfer instrument passes the verification checks, you can start sending funds from the balance platform to the transfer instrument (such as payouts).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_transfer_instruments(
          body :: Adyen.BalancePlatform.V1.TransferInstrumentInfo.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.V1.TransferInstrument.t()}
          | {:error, Adyen.BalancePlatform.V1.ServiceError.t()}
  def post_transfer_instruments(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.BalancePlatform.V1.TransferInstruments, :post_transfer_instruments},
      url: "/transferInstruments",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.BalancePlatform.V1.TransferInstrumentInfo, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.V1.TransferInstrument, :t}},
        {400, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {401, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {403, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {422, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {500, {Adyen.BalancePlatform.V1.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
