defmodule Adyen.A2APayments.V1.IDEALProfiles do
  @moduledoc """
  Provides API endpoints related to ideal profiles
  """

  @default_client Adyen.Client

  @doc """
  Manage an iDEAL profile

  Manage an already registered iDEAL profile. Generates a redirection URL to manage the iDEAL profile linked to the account holder from the request.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_ideal_profile_auth_link(
          body :: Adyen.A2APayments.V1.IdealAuthLinkRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.A2APayments.V1.IdealAuthLinkResponse.t()}
          | {:error, Adyen.A2APayments.V1.DefaultErrorResponseEntity.t()}
  def post_ideal_profile_auth_link(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.A2APayments.V1.IDEALProfiles, :post_ideal_profile_auth_link},
      url: "/ideal/profile/auth-link",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.A2APayments.V1.IdealAuthLinkRequest, :t}}],
      response: [
        {200, {Adyen.A2APayments.V1.IdealAuthLinkResponse, :t}},
        {400, {Adyen.A2APayments.V1.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.A2APayments.V1.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.A2APayments.V1.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Authenticate iDEAL profile

  Generates an redirection URL to finish the authentication flow when requested by iDEAL. Before calling this endpoint, make sure that your user has completed multi-factor authentication.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_ideal_profile_authenticate(
          body :: Adyen.A2APayments.V1.IdealAuthenticateRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.A2APayments.V1.IdealAuthenticateResponse.t()}
          | {:error, Adyen.A2APayments.V1.DefaultErrorResponseEntity.t()}
  def post_ideal_profile_authenticate(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.A2APayments.V1.IDEALProfiles, :post_ideal_profile_authenticate},
      url: "/ideal/profile/authenticate",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.A2APayments.V1.IdealAuthenticateRequest, :t}}],
      response: [
        {200, {Adyen.A2APayments.V1.IdealAuthenticateResponse, :t}},
        {400, {Adyen.A2APayments.V1.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.A2APayments.V1.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.A2APayments.V1.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Register an iDEAL profile

  Register a new iDEAL profile. The profile is linked to the account holder and payment instruments included in the request. The user must be redirected to the URL in the response to finish their IDEAL profile registration.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_ideal_profile_register(
          body :: Adyen.A2APayments.V1.ProfileRegistrationRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.A2APayments.V1.ProfileRegistrationResponse.t()}
          | {:error, Adyen.A2APayments.V1.DefaultErrorResponseEntity.t()}
  def post_ideal_profile_register(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.A2APayments.V1.IDEALProfiles, :post_ideal_profile_register},
      url: "/ideal/profile/register",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.A2APayments.V1.ProfileRegistrationRequest, :t}}],
      response: [
        {200, {Adyen.A2APayments.V1.ProfileRegistrationResponse, :t}},
        {400, {Adyen.A2APayments.V1.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.A2APayments.V1.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.A2APayments.V1.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
