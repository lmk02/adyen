defmodule Adyen.Management.ClientKeyCompanyLevel do
  @moduledoc """
  Provides API endpoint related to client key company level
  """

  @default_client Adyen.Client

  @doc """
  Generate new client key

  Returns a new [client key](https://docs.adyen.com/development-resources/client-side-authentication#how-it-works) for the API credential identified in the path. You can use the new client key a few minutes after generating it. The old client key stops working 24 hours after generating a new one.

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—API credentials read and write
  """
  @spec post_companies_company_id_api_credentials_api_credential_id_generate_client_key(
          companyId :: String.t(),
          apiCredentialId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.GenerateClientKeyResponse.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def post_companies_company_id_api_credentials_api_credential_id_generate_client_key(
        companyId,
        apiCredentialId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [companyId: companyId, apiCredentialId: apiCredentialId],
      call:
        {Adyen.Management.ClientKeyCompanyLevel,
         :post_companies_company_id_api_credentials_api_credential_id_generate_client_key},
      url: "/companies/#{companyId}/apiCredentials/#{apiCredentialId}/generateClientKey",
      method: :post,
      response: [
        {200, {Adyen.Management.GenerateClientKeyResponse, :t}},
        {400, {Adyen.Management.RestServiceError, :t}},
        {401, {Adyen.Management.RestServiceError, :t}},
        {403, {Adyen.Management.RestServiceError, :t}},
        {422, {Adyen.Management.RestServiceError, :t}},
        {500, {Adyen.Management.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
