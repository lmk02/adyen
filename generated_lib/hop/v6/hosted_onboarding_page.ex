defmodule Adyen.Hop.V6.HostedOnboardingPage do
  @moduledoc """
  Provides API endpoint related to hosted onboarding page
  """

  @default_client Adyen.Client

  @doc """
  Get a link to a Adyen-hosted onboarding page

  Returns a link to an Adyen-hosted onboarding page (HOP) that you can send to your account holder. For more information on how to use HOP, refer to [Hosted onboarding](https://docs.adyen.com/classic-platforms/onboard-users/hosted-onboarding-page).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_get_onboarding_url(body :: Adyen.Hop.V6.GetOnboardingUrlRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Hop.V6.GetOnboardingUrlResponse.t()}
          | {:error, Adyen.Hop.V6.ServiceError.t()}
  def post_get_onboarding_url(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Hop.V6.HostedOnboardingPage, :post_get_onboarding_url},
      url: "/getOnboardingUrl",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Hop.V6.GetOnboardingUrlRequest, :t}}],
      response: [
        {200, {Adyen.Hop.V6.GetOnboardingUrlResponse, :t}},
        {400, {Adyen.Hop.V6.ServiceError, :t}},
        {401, {Adyen.Hop.V6.ServiceError, :t}},
        {403, {Adyen.Hop.V6.ServiceError, :t}},
        {422, {Adyen.Hop.V6.ServiceError, :t}},
        {500, {Adyen.Hop.V6.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
