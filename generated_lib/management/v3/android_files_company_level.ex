defmodule Adyen.Management.V3.AndroidFilesCompanyLevel do
  @moduledoc """
  Provides API endpoints related to android files company level
  """

  @default_client Adyen.Client

  @doc """
  Get a list of Android apps

  Returns a list of the Android apps that are available for the company identified in the path. 
  These apps have been uploaded to Adyen and can be installed or uninstalled on Android payment terminals through [terminal actions](https://docs.adyen.com/point-of-sale/automating-terminal-management/terminal-actions-api).

  To make this request, your API credential must have one of the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Android files read
  * Management API—Android files read and write
  * Management API—Terminal actions read
  * Management API—Terminal actions read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).

  ## Options

    * `pageNumber`: The number of the page to fetch.
    * `pageSize`: The number of items to have on a page, maximum 100. The default is 20 items on a page.
    * `packageName`: The package name that uniquely identifies the Android app.
    * `versionCode`: The version number of the app.

  """
  @spec get_companies_company_id_android_apps(companyId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Management.V3.AndroidAppsResponse.t()}
          | {:error, Adyen.Management.V3.RestServiceError.t()}
  def get_companies_company_id_android_apps(companyId, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:packageName, :pageNumber, :pageSize, :versionCode])

    client.request(%{
      args: [companyId: companyId],
      call:
        {Adyen.Management.V3.AndroidFilesCompanyLevel, :get_companies_company_id_android_apps},
      url: "/companies/#{companyId}/androidApps",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.Management.V3.AndroidAppsResponse, :t}},
        {400, {Adyen.Management.V3.RestServiceError, :t}},
        {401, {Adyen.Management.V3.RestServiceError, :t}},
        {403, {Adyen.Management.V3.RestServiceError, :t}},
        {422, {Adyen.Management.V3.RestServiceError, :t}},
        {500, {Adyen.Management.V3.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get Android app

  Returns the details of the Android app identified in the path. 
  These apps have been uploaded to Adyen and can be installed or uninstalled on Android payment terminals through [terminal actions](https://docs.adyen.com/point-of-sale/automating-terminal-management/terminal-actions-api).

  To make this request, your API credential must have one of the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Android files read
  * Management API—Android files read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).
  """
  @spec get_companies_company_id_android_apps_id(
          companyId :: String.t(),
          id :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.V3.AndroidApp.t()}
          | {:error, Adyen.Management.V3.RestServiceError.t()}
  def get_companies_company_id_android_apps_id(companyId, id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [companyId: companyId, id: id],
      call:
        {Adyen.Management.V3.AndroidFilesCompanyLevel, :get_companies_company_id_android_apps_id},
      url: "/companies/#{companyId}/androidApps/#{id}",
      method: :get,
      response: [
        {200, {Adyen.Management.V3.AndroidApp, :t}},
        {400, {Adyen.Management.V3.RestServiceError, :t}},
        {401, {Adyen.Management.V3.RestServiceError, :t}},
        {403, {Adyen.Management.V3.RestServiceError, :t}},
        {422, {Adyen.Management.V3.RestServiceError, :t}},
        {500, {Adyen.Management.V3.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a list of Android certificates

  Returns a list of the Android certificates that are available for the company identified in the path.
  Typically, these certificates enable running apps on Android payment terminals. The certificates in the list have been uploaded to Adyen and can be installed or uninstalled on Android terminals through [terminal actions](https://docs.adyen.com/point-of-sale/automating-terminal-management/terminal-actions-api).

  To make this request, your API credential must have one of the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Android files read
  * Management API—Android files read and write
  * Management API—Terminal actions read
  * Management API—Terminal actions read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).

  ## Options

    * `pageNumber`: The number of the page to fetch.
    * `pageSize`: The number of items to have on a page, maximum 100. The default is 20 items on a page.
    * `certificateName`: The name of the certificate.

  """
  @spec get_companies_company_id_android_certificates(companyId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Management.V3.AndroidCertificatesResponse.t()}
          | {:error, Adyen.Management.V3.RestServiceError.t()}
  def get_companies_company_id_android_certificates(companyId, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:certificateName, :pageNumber, :pageSize])

    client.request(%{
      args: [companyId: companyId],
      call:
        {Adyen.Management.V3.AndroidFilesCompanyLevel,
         :get_companies_company_id_android_certificates},
      url: "/companies/#{companyId}/androidCertificates",
      method: :get,
      query: query,
      response: [
        {200, {Adyen.Management.V3.AndroidCertificatesResponse, :t}},
        {400, {Adyen.Management.V3.RestServiceError, :t}},
        {401, {Adyen.Management.V3.RestServiceError, :t}},
        {403, {Adyen.Management.V3.RestServiceError, :t}},
        {422, {Adyen.Management.V3.RestServiceError, :t}},
        {500, {Adyen.Management.V3.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Reprocess Android App

  Reuploads the Android app identified in the path. 
  To make this request, your API credential must have this [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Android files read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).
  >By choosing to upload, install, or run any third-party applications on an Adyen payment terminal, you accept full responsibility and liability for any consequences of uploading, installing, or running any such applications.
  """
  @spec patch_companies_company_id_android_apps_id(
          companyId :: String.t(),
          id :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.V3.ReprocessAndroidAppResponse.t()}
          | {:error, Adyen.Management.V3.RestServiceError.t()}
  def patch_companies_company_id_android_apps_id(companyId, id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [companyId: companyId, id: id],
      call:
        {Adyen.Management.V3.AndroidFilesCompanyLevel,
         :patch_companies_company_id_android_apps_id},
      url: "/companies/#{companyId}/androidApps/#{id}",
      method: :patch,
      response: [
        {200, {Adyen.Management.V3.ReprocessAndroidAppResponse, :t}},
        {400, {Adyen.Management.V3.RestServiceError, :t}},
        {401, {Adyen.Management.V3.RestServiceError, :t}},
        {403, {Adyen.Management.V3.RestServiceError, :t}},
        {422, {Adyen.Management.V3.RestServiceError, :t}},
        {500, {Adyen.Management.V3.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Upload Android App

  Uploads an Android APK file to Adyen.
  The maximum APK file size is 200 MB.
  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Android files read and write

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).
  >By choosing to upload, install, or run any third-party applications on an Adyen payment terminal, you accept full responsibility and liability for any consequences of uploading, installing, or running any such applications.
  """
  @spec post_companies_company_id_android_apps(companyId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Management.V3.UploadAndroidAppResponse.t()}
          | {:error, Adyen.Management.V3.RestServiceError.t()}
  def post_companies_company_id_android_apps(companyId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [companyId: companyId],
      call:
        {Adyen.Management.V3.AndroidFilesCompanyLevel, :post_companies_company_id_android_apps},
      url: "/companies/#{companyId}/androidApps",
      method: :post,
      response: [
        {200, {Adyen.Management.V3.UploadAndroidAppResponse, :t}},
        {400, {Adyen.Management.V3.RestServiceError, :t}},
        {401, {Adyen.Management.V3.RestServiceError, :t}},
        {403, {Adyen.Management.V3.RestServiceError, :t}},
        {422, {Adyen.Management.V3.RestServiceError, :t}},
        {500, {Adyen.Management.V3.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Upload Android Certificate

  Uploads an Android Certificate file to Adyen.

  In the live environment, requests to this endpoint are subject to [rate limits](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).
  """
  @spec post_companies_company_id_android_certificates(companyId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Management.V3.UploadAndroidCertificateResponse.t()}
          | {:error, Adyen.Management.V3.RestServiceError.t()}
  def post_companies_company_id_android_certificates(companyId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [companyId: companyId],
      call:
        {Adyen.Management.V3.AndroidFilesCompanyLevel,
         :post_companies_company_id_android_certificates},
      url: "/companies/#{companyId}/androidCertificates",
      method: :post,
      response: [
        {200, {Adyen.Management.V3.UploadAndroidCertificateResponse, :t}},
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
