defmodule Adyen.SoftPOSConfiguration.V3.SessionAuthentication do
  @moduledoc """
  Provides API endpoint related to session authentication
  """

  @default_client Adyen.Client

  @doc """
  Create a communication session

  Establishes a secure communication session between the Mobile SDK and the Adyen payments platform, through mutual authentication. The request sends a setup token that identifies the SDK and the device. The response returns a session token that the SDK can use to authenticate responses received from the Adyen payments platform.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_auth_certificate(
          body :: Adyen.SoftPOSConfiguration.V3.CertificateLoadingRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.SoftPOSConfiguration.V3.CertificateLoadingResponse.t()}
          | {:error, Adyen.SoftPOSConfiguration.V3.DefaultErrorResponseEntity.t()}
  def post_auth_certificate(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.SoftPOSConfiguration.V3.SessionAuthentication, :post_auth_certificate},
      url: "/auth/certificate",
      body: body,
      method: :post,
      request: [
        {"application/json", {Adyen.SoftPOSConfiguration.V3.CertificateLoadingRequest, :t}}
      ],
      response: [
        {201, {Adyen.SoftPOSConfiguration.V3.CertificateLoadingResponse, :t}},
        {400, {Adyen.SoftPOSConfiguration.V3.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.SoftPOSConfiguration.V3.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.SoftPOSConfiguration.V3.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.SoftPOSConfiguration.V3.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
