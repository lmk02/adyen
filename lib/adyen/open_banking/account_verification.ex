defmodule Adyen.OpenBanking.AccountVerification do
  @moduledoc """
  Provides API endpoints related to account verification
  """

  @default_client Adyen.Client

  @doc """
  Get account verification report

  Get the account verification report using a unique code from a successful open banking connection. This report provides identity verification and bank account details.
  """
  @spec get_account_verification_reports_code(code :: String.t(), opts :: keyword) ::
          {:ok, Adyen.OpenBanking.AccountVerificationReportResponse.t()}
          | {:error, Adyen.OpenBanking.DefaultErrorResponseEntity.t()}
  def get_account_verification_reports_code(code, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [code: code],
      call: {Adyen.OpenBanking.AccountVerification, :get_account_verification_reports_code},
      url: "/accountVerification/reports/#{code}",
      method: :get,
      response: [
        {200, {Adyen.OpenBanking.AccountVerificationReportResponse, :t}},
        {400, {Adyen.OpenBanking.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.OpenBanking.DefaultErrorResponseEntity, :t}},
        {404, {Adyen.OpenBanking.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.OpenBanking.DefaultErrorResponseEntity, :t}},
        {429, {Adyen.OpenBanking.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.OpenBanking.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create routes for account verification

  Create a list of routes for verifying bank accounts of third-party individuals. Successful connections generate a unique code used for requesting bank reports and verifying identity.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_account_verification_routes(
          body :: Adyen.OpenBanking.AccountVerificationRoutesRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.OpenBanking.AccountVerificationRoutesResponse.t()}
          | {:error, Adyen.OpenBanking.DefaultErrorResponseEntity.t()}
  def post_account_verification_routes(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.OpenBanking.AccountVerification, :post_account_verification_routes},
      url: "/accountVerification/routes",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.OpenBanking.AccountVerificationRoutesRequest, :t}}],
      response: [
        {200, {Adyen.OpenBanking.AccountVerificationRoutesResponse, :t}},
        {400, {Adyen.OpenBanking.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.OpenBanking.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.OpenBanking.DefaultErrorResponseEntity, :t}},
        {429, {Adyen.OpenBanking.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.OpenBanking.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
