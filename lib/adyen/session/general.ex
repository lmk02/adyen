defmodule Adyen.Session.General do
  @moduledoc """
  Provides API endpoint related to general
  """

  @default_client Adyen.Client

  @doc """
  Create a communication session

  Establishes a secure communications session between the POS Mobile SDK and the Adyen payments platform, through mutual authentication. 
  The request sends a setup token that identifies the SDK and the device. The response returns a session token that the SDK can use to authenticate responses received from the Adyen payments platform.
  >This request applies to **mobile in-person** transactions. You cannot use this request to create online payments sessions. 


  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_sessions(body :: Adyen.Session.CreateSessionRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Session.CreateSessionResponse.t()} | :error
  def post_sessions(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Session.General, :post_sessions},
      url: "/sessions",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Session.CreateSessionRequest, :t}}],
      response: [{201, {Adyen.Session.CreateSessionResponse, :t}}],
      opts: opts
    })
  end
end
