defmodule Adyen.LegalEntity.V4.HostedOnboarding do
  @moduledoc """
  Provides API endpoints related to hosted onboarding
  """

  @default_client Adyen.Client

  @doc """
  Get a list of hosted onboarding page themes

  Returns a list of hosted onboarding page themes.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.

  """
  @spec get_themes(opts :: keyword) ::
          {:ok, Adyen.LegalEntity.V4.OnboardingThemes.t()}
          | {:error, Adyen.LegalEntity.V4.ServiceError.t()}
  def get_themes(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [],
      call: {Adyen.LegalEntity.V4.HostedOnboarding, :get_themes},
      url: "/themes",
      method: :get,
      response: [
        {200, {Adyen.LegalEntity.V4.OnboardingThemes, :t}},
        {400, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {401, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {403, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {422, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {500, {Adyen.LegalEntity.V4.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get an onboarding link theme

  Returns the details of the theme identified in the path.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.

  """
  @spec get_themes_id(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.LegalEntity.V4.OnboardingTheme.t()}
          | {:error, Adyen.LegalEntity.V4.ServiceError.t()}
  def get_themes_id(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.LegalEntity.V4.HostedOnboarding, :get_themes_id},
      url: "/themes/#{id}",
      method: :get,
      response: [
        {200, {Adyen.LegalEntity.V4.OnboardingTheme, :t}},
        {400, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {401, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {403, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {422, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {500, {Adyen.LegalEntity.V4.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a link to an Adyen-hosted onboarding page

  Returns a link to an Adyen-hosted onboarding page where you need to redirect your user.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.


  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_legal_entities_id_onboarding_links(
          id :: String.t(),
          body :: Adyen.LegalEntity.V4.OnboardingLinkInfo.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.LegalEntity.V4.OnboardingLink.t()}
          | {:error, Adyen.LegalEntity.V4.ServiceError.t()}
  def post_legal_entities_id_onboarding_links(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call: {Adyen.LegalEntity.V4.HostedOnboarding, :post_legal_entities_id_onboarding_links},
      url: "/legalEntities/#{id}/onboardingLinks",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.LegalEntity.V4.OnboardingLinkInfo, :t}}],
      response: [
        {200, {Adyen.LegalEntity.V4.OnboardingLink, :t}},
        {400, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {401, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {403, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {422, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {500, {Adyen.LegalEntity.V4.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
