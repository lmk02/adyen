defmodule Adyen.OpenBanking.V1.AccountVerification do
  @moduledoc """
  Provides API endpoints related to account verification
  """

  @default_client Adyen.Client

  @doc """
  Get account verification report

  Get the account verification report using a unique code from a successful open banking connection. This report provides identity verification and bank account details.
  """
  @spec get_account_verification_reports_code(code :: String.t(), opts :: keyword) ::
          {:ok, Adyen.OpenBanking.V1.AccountVerificationReportResponse.t()}
          | {:error, Adyen.OpenBanking.V1.DefaultErrorResponseEntity.t()}
  def get_account_verification_reports_code(code, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [code: code],
      call: {Adyen.OpenBanking.V1.AccountVerification, :get_account_verification_reports_code},
      url: "/accountVerification/reports/#{code}",
      method: :get,
      response: [
        {200, {Adyen.OpenBanking.V1.AccountVerificationReportResponse, :t}},
        {400, {Adyen.OpenBanking.V1.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.OpenBanking.V1.DefaultErrorResponseEntity, :t}},
        {404, {Adyen.OpenBanking.V1.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.OpenBanking.V1.DefaultErrorResponseEntity, :t}},
        {429, {Adyen.OpenBanking.V1.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.OpenBanking.V1.DefaultErrorResponseEntity, :t}}
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
          body :: Adyen.OpenBanking.V1.AccountVerificationRoutesRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.OpenBanking.V1.AccountVerificationRoutesResponse.t()}
          | {:error, Adyen.OpenBanking.V1.DefaultErrorResponseEntity.t()}
  def post_account_verification_routes(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.OpenBanking.V1.AccountVerification, :post_account_verification_routes},
      url: "/accountVerification/routes",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.OpenBanking.V1.AccountVerificationRoutesRequest, :t}}],
      response: [
        {200, {Adyen.OpenBanking.V1.AccountVerificationRoutesResponse, :t}},
        {400, {Adyen.OpenBanking.V1.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.OpenBanking.V1.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.OpenBanking.V1.DefaultErrorResponseEntity, :t}},
        {429, {Adyen.OpenBanking.V1.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.OpenBanking.V1.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
