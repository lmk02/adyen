defmodule Adyen.LegalEntity.HostedOnboarding do
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
          {:ok, Adyen.LegalEntity.OnboardingThemes.t()}
          | {:error, Adyen.LegalEntity.ServiceError.t()}
  def get_themes(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [],
      call: {Adyen.LegalEntity.HostedOnboarding, :get_themes},
      url: "/themes",
      method: :get,
      response: [
        {200, {Adyen.LegalEntity.OnboardingThemes, :t}},
        {400, {Adyen.LegalEntity.ServiceError, :t}},
        {401, {Adyen.LegalEntity.ServiceError, :t}},
        {403, {Adyen.LegalEntity.ServiceError, :t}},
        {422, {Adyen.LegalEntity.ServiceError, :t}},
        {500, {Adyen.LegalEntity.ServiceError, :t}}
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
          {:ok, Adyen.LegalEntity.OnboardingTheme.t()}
          | {:error, Adyen.LegalEntity.ServiceError.t()}
  def get_themes_id(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.LegalEntity.HostedOnboarding, :get_themes_id},
      url: "/themes/#{id}",
      method: :get,
      response: [
        {200, {Adyen.LegalEntity.OnboardingTheme, :t}},
        {400, {Adyen.LegalEntity.ServiceError, :t}},
        {401, {Adyen.LegalEntity.ServiceError, :t}},
        {403, {Adyen.LegalEntity.ServiceError, :t}},
        {422, {Adyen.LegalEntity.ServiceError, :t}},
        {500, {Adyen.LegalEntity.ServiceError, :t}}
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
          body :: Adyen.LegalEntity.OnboardingLinkInfo.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.LegalEntity.OnboardingLink.t()}
          | {:error, Adyen.LegalEntity.ServiceError.t()}
  def post_legal_entities_id_onboarding_links(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call: {Adyen.LegalEntity.HostedOnboarding, :post_legal_entities_id_onboarding_links},
      url: "/legalEntities/#{id}/onboardingLinks",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.LegalEntity.OnboardingLinkInfo, :t}}],
      response: [
        {200, {Adyen.LegalEntity.OnboardingLink, :t}},
        {400, {Adyen.LegalEntity.ServiceError, :t}},
        {401, {Adyen.LegalEntity.ServiceError, :t}},
        {403, {Adyen.LegalEntity.ServiceError, :t}},
        {422, {Adyen.LegalEntity.ServiceError, :t}},
        {500, {Adyen.LegalEntity.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
