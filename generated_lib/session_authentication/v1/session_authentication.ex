defmodule Adyen.SessionAuthentication.V1.SessionAuthentication do
  @moduledoc """
  Provides API endpoint related to session authentication
  """

  @default_client Adyen.Client

  @doc """
  Create a session token

  Creates a session token that is required to integrate [components](https://docs.adyen.com/platforms/components-overview).

  The response contains encrypted session data. The front end then uses the session data to make the required server-side calls for the component.

  To create a token, you must meet specific requirements. These requirements vary depending on the type of component. For more information, see the documentation for [Onboarding](https://docs.adyen.com/platforms/onboard-users/components) and [Platform Experience](https://docs.adyen.com/platforms/build-user-dashboards) components.


  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_sessions(
          body :: Adyen.SessionAuthentication.V1.AuthenticationSessionRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.SessionAuthentication.V1.AuthenticationSessionResponse.t()}
          | {:error, Adyen.SessionAuthentication.V1.DefaultErrorResponseEntity.t()}
  def post_sessions(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.SessionAuthentication.V1.SessionAuthentication, :post_sessions},
      url: "/sessions",
      body: body,
      method: :post,
      request: [
        {"application/json", {Adyen.SessionAuthentication.V1.AuthenticationSessionRequest, :t}}
      ],
      response: [
        {200, {Adyen.SessionAuthentication.V1.AuthenticationSessionResponse, :t}},
        {400, {Adyen.SessionAuthentication.V1.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.SessionAuthentication.V1.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.SessionAuthentication.V1.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
