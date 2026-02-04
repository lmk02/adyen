defmodule Adyen.BalancePlatform.ManageCardPIN do
  @moduledoc """
  Provides API endpoints related to manage card pin
  """

  @default_client Adyen.Client

  @doc """
  Get an RSA public key

  Get an [RSA](https://en.wikipedia.org/wiki/RSA_(cryptosystem)) public key to encrypt or decrypt card data.

   You need the RSA public key to generate the `encryptedKey` required to:
  - [Change a PIN](https://docs.adyen.com/api-explorer/balanceplatform/2/post/pins/change).
  - [Reveal a PIN](https://docs.adyen.com/api-explorer/balanceplatform/2/post/pins/reveal).
  - [Reveal a PAN](https://docs.adyen.com/api-explorer/balanceplatform/2/post/paymentInstruments/reveal).

  ## Options

    * `purpose`: The purpose of the public key.
      
      Possible values: **pinChange**, **pinReveal**, **panReveal**.
      
      Default value: **pinReveal**.
    * `format`: The encoding format of public key.
      
      Possible values: **jwk**, **pem**.
      
      Default value: **pem**.

  """
  @spec get_public_key(opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.PublicKeyResponse.t()}
          | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def get_public_key(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:format, :purpose])

    client.request(%{
      args: [],
      call: {Adyen.BalancePlatform.ManageCardPIN, :get_public_key},
      url: "/publicKey",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.BalancePlatform.PublicKeyResponse, :t}},
        {401, {Adyen.BalancePlatform.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Change a card PIN

  Changes the personal identification number (PIN) of a specified card.

  To make this request, your API credential must have the following role:
  * Bank Issuing PIN Change Webservice role

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec create_pins_change(body :: Adyen.BalancePlatform.PinChangeRequest.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.PinChangeResponse.t()}
          | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def create_pins_change(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.BalancePlatform.ManageCardPIN, :create_pins_change},
      url: "/pins/change",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.BalancePlatform.PinChangeRequest, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.PinChangeResponse, :t}},
        {401, {Adyen.BalancePlatform.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Reveal a card PIN

  Returns an encrypted PIN block that contains the PIN of a specified card. You can use the decrypted data to reveal the PIN in your user interface.

  To make this request, your API credential must have the following role:
  * Bank Issuing PIN Reveal Webservice role

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec create_pins_reveal(body :: Adyen.BalancePlatform.RevealPinRequest.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.RevealPinResponse.t()}
          | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def create_pins_reveal(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.BalancePlatform.ManageCardPIN, :create_pins_reveal},
      url: "/pins/reveal",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.BalancePlatform.RevealPinRequest, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.RevealPinResponse, :t}},
        {401, {Adyen.BalancePlatform.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
