defmodule Adyen.Management.V3.DonationCampaigns do
  @moduledoc """
  Provides API endpoints related to donation campaigns
  """

  @default_client Adyen.Client

  @doc """
  Delete a donation campaign

  Removes the donation campaign specified in the path. This request is only allowed if the campaign has the status **inactive**.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Campaign Management read and write
  """
  @spec delete_companies_company_id_campaign_management_donation_campaign_id(
          companyId :: String.t(),
          donationCampaignId :: String.t(),
          opts :: keyword
        ) :: :ok | {:error, Adyen.Management.V3.DefaultErrorResponseEntity.t()}
  def delete_companies_company_id_campaign_management_donation_campaign_id(
        companyId,
        donationCampaignId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [companyId: companyId, donationCampaignId: donationCampaignId],
      call:
        {Adyen.Management.V3.DonationCampaigns,
         :delete_companies_company_id_campaign_management_donation_campaign_id},
      url: "/companies/#{companyId}/campaignManagement/#{donationCampaignId}",
      method: :delete,
      response: [
        {204, :null},
        {400, {Adyen.Management.V3.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.Management.V3.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.Management.V3.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.Management.V3.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.Management.V3.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get the donation campaigns for an account holder

  Returns a paginated list of donation campaigns associated with the account holder specified in the path. You can filter the list by campaign status.

  To make this request, your API credential must have one of the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Campaign Management read
  * Management API—Campaign Management read and write

  ## Options

    * `status`: The campaign status to return campaigns that match. Allowed values: **inactive**, **active**, or **ended**.
    * `pageNumber`: The number of the page to fetch.
    * `pageSize`: The number of items to have on a page, maximum 100. The default is 10 items on a page.

  """
  @spec get_companies_company_id_campaign_management_account_holders_account_holder_id(
          companyId :: String.t(),
          accountHolderId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.V3.ListDonationCampaignsResponse.t()}
          | {:error, Adyen.Management.V3.DefaultErrorResponseEntity.t()}
  def get_companies_company_id_campaign_management_account_holders_account_holder_id(
        companyId,
        accountHolderId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:pageNumber, :pageSize, :status])

    client.request(%{
      args: [companyId: companyId, accountHolderId: accountHolderId],
      call:
        {Adyen.Management.V3.DonationCampaigns,
         :get_companies_company_id_campaign_management_account_holders_account_holder_id},
      url: "/companies/#{companyId}/campaignManagement/accountHolders/#{accountHolderId}",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.Management.V3.ListDonationCampaignsResponse, :t}},
        {400, {Adyen.Management.V3.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.Management.V3.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.Management.V3.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.Management.V3.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.Management.V3.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update a donation campaign

  Updates the properties of the donation campaign specified in the path. Note the following restrictions: 

  * You cannot use a PATCH request to update the campaign status. To activate or end a campaign, make a POST request to the `/campaignManagement/{campaignId}/status/{status}` endpoint.
  * You get a validation error if you add account holders that are not compatible with the nonprofit.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Campaign Management read and write

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_companies_company_id_campaign_management_donation_campaign_id(
          companyId :: String.t(),
          donationCampaignId :: String.t(),
          body :: Adyen.Management.V3.DonationCampaignUpdate.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.V3.DonationCampaign.t()}
          | {:error, Adyen.Management.V3.DefaultErrorResponseEntity.t()}
  def patch_companies_company_id_campaign_management_donation_campaign_id(
        companyId,
        donationCampaignId,
        body,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [companyId: companyId, donationCampaignId: donationCampaignId, body: body],
      call:
        {Adyen.Management.V3.DonationCampaigns,
         :patch_companies_company_id_campaign_management_donation_campaign_id},
      url: "/companies/#{companyId}/campaignManagement/#{donationCampaignId}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.Management.V3.DonationCampaignUpdate, :t}}],
      response: [
        {200, {Adyen.Management.V3.DonationCampaign, :t}},
        {400, {Adyen.Management.V3.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.Management.V3.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.Management.V3.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.Management.V3.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.Management.V3.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create a donation campaign

  Creates a new donation campaign, to give shoppers the option to donate to a nonprofit organization when making a payment. A campaign can be for online payments, in-person payments, or both online and in-person payments.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Campaign Management read and write

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_companies_company_id_campaign_management(
          companyId :: String.t(),
          body :: Adyen.Management.V3.DonationCampaignRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.V3.DonationCampaign.t()}
          | {:error, Adyen.Management.V3.DefaultErrorResponseEntity.t()}
  def post_companies_company_id_campaign_management(companyId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [companyId: companyId, body: body],
      call:
        {Adyen.Management.V3.DonationCampaigns, :post_companies_company_id_campaign_management},
      url: "/companies/#{companyId}/campaignManagement",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Management.V3.DonationCampaignRequest, :t}}],
      response: [
        {200, {Adyen.Management.V3.DonationCampaign, :t}},
        {400, {Adyen.Management.V3.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.Management.V3.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.Management.V3.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.Management.V3.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.Management.V3.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Activate or end a donation campaign

  Starts or stops the donation campaign specified in the path, by providing a path parameter. 
  Use the path parameter **activate** to start an inactive campaign, or **end** to stop an active campaign. Other status transitions are not allowed.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Campaign Management read and write
  """
  @spec post_companies_company_id_campaign_management_donation_campaign_id_status_status(
          companyId :: String.t(),
          donationCampaignId :: String.t(),
          status :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.V3.DonationCampaign.t()}
          | {:error, Adyen.Management.V3.DefaultErrorResponseEntity.t()}
  def post_companies_company_id_campaign_management_donation_campaign_id_status_status(
        companyId,
        donationCampaignId,
        status,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [companyId: companyId, donationCampaignId: donationCampaignId, status: status],
      call:
        {Adyen.Management.V3.DonationCampaigns,
         :post_companies_company_id_campaign_management_donation_campaign_id_status_status},
      url: "/companies/#{companyId}/campaignManagement/#{donationCampaignId}/status/#{status}",
      method: :post,
      response: [
        {200, {Adyen.Management.V3.DonationCampaign, :t}},
        {400, {Adyen.Management.V3.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.Management.V3.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.Management.V3.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.Management.V3.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.Management.V3.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a list of nonprofits

  Returns a list of supported nonprofit organizations to choose from when creating a donation campaign. The list only contains nonprofits that are compatible with all the account holders specified in the request.

  ## Options

    * `searchTerm`: A query to return nonprofit organizations for, maximum 100 characters. For example, `&searchTerm=clean%20water`.
    * `pageNumber`: The number of the page to fetch.
    * `pageSize`: The number of items to have on a page, maximum 100. The default is 10 items on a page.
    * `goal`: One or more United Nations Sustainable Development Goals to return nonprofit organizations for. Format: `unsdg_<number>`, for example, `&goal=unsdg_6&goal=unsdg_2`.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_companies_company_id_nonprofits(
          companyId :: String.t(),
          body :: Adyen.Management.V3.ListNonprofitsRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.V3.ListNonprofitsResponse.t()}
          | {:error, Adyen.Management.V3.DefaultErrorResponseEntity.t()}
  def post_companies_company_id_nonprofits(companyId, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:goal, :pageNumber, :pageSize, :searchTerm])

    client.request(%{
      args: [companyId: companyId, body: body],
      call: {Adyen.Management.V3.DonationCampaigns, :post_companies_company_id_nonprofits},
      url: "/companies/#{companyId}/nonprofits",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", {Adyen.Management.V3.ListNonprofitsRequest, :t}}],
      response: [
        {200, {Adyen.Management.V3.ListNonprofitsResponse, :t}},
        {400, {Adyen.Management.V3.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.Management.V3.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.Management.V3.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.Management.V3.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.Management.V3.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
