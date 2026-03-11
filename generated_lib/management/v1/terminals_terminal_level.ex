defmodule Adyen.Management.V1.TerminalsTerminalLevel do
  @moduledoc """
  Provides API endpoint related to terminals terminal level
  """

  @default_client Adyen.Client

  @doc """
  Get a list of terminals

  Returns the payment terminals that the API credential has access to and that match the query parameters. 
  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API — Terminal actions read

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).

  ## Options

    * `searchQuery`: Returns terminals with an ID that contains the specified string. If present, other query parameters are ignored.
    * `otpQuery`: Returns one or more terminals associated with the one-time passwords specified in the request. If this query parameter is used, other query parameters are ignored.
    * `countries`: Returns terminals located in the countries specified by their [two-letter country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).
    * `merchantIds`: Returns terminals that belong to the merchant accounts specified by their unique merchant account ID.
    * `storeIds`: Returns terminals that are assigned to the [stores](https://docs.adyen.com/api-explorer/#/ManagementService/latest/get/stores) specified by their unique store ID.
    * `brandModels`: Returns terminals of the [models](https://docs.adyen.com/api-explorer/#/ManagementService/latest/get/companies/{companyId}/terminalModels) specified in the format *brand.model*.
    * `pageNumber`: The number of the page to fetch.
    * `pageSize`: The number of items to have on a page, maximum 100. The default is 20 items on a page.

  """
  @spec get_terminals(opts :: keyword) ::
          {:ok, Adyen.Management.V1.ListTerminalsResponse.t()}
          | {:error, Adyen.Management.V1.RestServiceError.t()}
  def get_terminals(opts \\ []) do
    client = opts[:client] || @default_client

    query =
      Keyword.take(opts, [
        :brandModels,
        :countries,
        :merchantIds,
        :otpQuery,
        :pageNumber,
        :pageSize,
        :searchQuery,
        :storeIds
      ])

    client.request(%{
      args: [],
      call: {Adyen.Management.V1.TerminalsTerminalLevel, :get_terminals},
      url: "/terminals",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.Management.V1.ListTerminalsResponse, :t}},
        {400, {Adyen.Management.V1.RestServiceError, :t}},
        {401, {Adyen.Management.V1.RestServiceError, :t}},
        {403, {Adyen.Management.V1.RestServiceError, :t}},
        {422, {Adyen.Management.V1.RestServiceError, :t}},
        {500, {Adyen.Management.V1.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
