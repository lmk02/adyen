defmodule Adyen.Management.V3.APIKeyCompanyLevel do
  @moduledoc """
  Provides API endpoint related to api key company level
  """

  @default_client Adyen.Client

  @doc """
  Generate new API key

  Returns a new API key for the API credential. You can use the new API key a few minutes after generating it. The old API key stops working 24 hours after generating a new one.

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—API credentials read and write
  """
  @spec post_companies_company_id_api_credentials_api_credential_id_generate_api_key(
          companyId :: String.t(),
          apiCredentialId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.V3.GenerateApiKeyResponse.t()}
          | {:error, Adyen.Management.V3.RestServiceError.t()}
  def post_companies_company_id_api_credentials_api_credential_id_generate_api_key(
        companyId,
        apiCredentialId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [companyId: companyId, apiCredentialId: apiCredentialId],
      call:
        {Adyen.Management.V3.APIKeyCompanyLevel,
         :post_companies_company_id_api_credentials_api_credential_id_generate_api_key},
      url: "/companies/#{companyId}/apiCredentials/#{apiCredentialId}/generateApiKey",
      method: :post,
      response: [
        {200, {Adyen.Management.V3.GenerateApiKeyResponse, :t}},
        {400, {Adyen.Management.V3.RestServiceError, :t}},
        {401, {Adyen.Management.V3.RestServiceError, :t}},
        {403, {Adyen.Management.V3.RestServiceError, :t}},
        {422, {Adyen.Management.V3.RestServiceError, :t}},
        {500, {Adyen.Management.V3.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
