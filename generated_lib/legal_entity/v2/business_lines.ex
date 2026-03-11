defmodule Adyen.LegalEntity.V2.BusinessLines do
  @moduledoc """
  Provides API endpoints related to business lines
  """

  @default_client Adyen.Client

  @doc """
  Delete a business line

  Deletes a business line.

   >If you delete a business line linked to a [payment method](https://docs.adyen.com/development-resources/paymentmethodvariant#management-api), it can affect your merchant account's ability to use the [payment method](https://docs.adyen.com/api-explorer/Management/latest/post/merchants/_merchantId_/paymentMethodSettings). The business line is removed from all linked merchant accounts.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.

  """
  @spec delete_business_lines_id(id :: String.t(), opts :: keyword) ::
          :ok | {:error, Adyen.LegalEntity.V2.ServiceError.t()}
  def delete_business_lines_id(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.LegalEntity.V2.BusinessLines, :delete_business_lines_id},
      url: "/businessLines/#{id}",
      method: :delete,
      response: [
        {204, :null},
        {400, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {401, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {403, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {422, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {500, {Adyen.LegalEntity.V2.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a business line

  Returns the detail of a business line.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.

  """
  @spec get_business_lines_id(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.LegalEntity.V2.BusinessLine.t()}
          | {:error, Adyen.LegalEntity.V2.ServiceError.t()}
  def get_business_lines_id(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.LegalEntity.V2.BusinessLines, :get_business_lines_id},
      url: "/businessLines/#{id}",
      method: :get,
      response: [
        {200, {Adyen.LegalEntity.V2.BusinessLine, :t}},
        {400, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {401, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {403, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {422, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {500, {Adyen.LegalEntity.V2.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update a business line

  Updates a business line.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.


  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_business_lines_id(
          id :: String.t(),
          body :: Adyen.LegalEntity.V2.BusinessLineInfoUpdate.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.LegalEntity.V2.BusinessLine.t()}
          | {:error, Adyen.LegalEntity.V2.ServiceError.t()}
  def patch_business_lines_id(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call: {Adyen.LegalEntity.V2.BusinessLines, :patch_business_lines_id},
      url: "/businessLines/#{id}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.LegalEntity.V2.BusinessLineInfoUpdate, :t}}],
      response: [
        {200, {Adyen.LegalEntity.V2.BusinessLine, :t}},
        {400, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {401, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {403, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {422, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {500, {Adyen.LegalEntity.V2.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create a business line

  Creates a business line. 

  This resource contains information about your user's line of business, including their industry and their source of funds. Adyen uses this information to verify your users as required by payment industry regulations.Adyen informs you of the verification results through webhooks or API responses.

  You can create a maximum of 200 business lines per legal entity for payment processing.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.


  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_business_lines(body :: Adyen.LegalEntity.V2.BusinessLineInfo.t(), opts :: keyword) ::
          {:ok, Adyen.LegalEntity.V2.BusinessLine.t()}
          | {:error, Adyen.LegalEntity.V2.ServiceError.t()}
  def post_business_lines(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.LegalEntity.V2.BusinessLines, :post_business_lines},
      url: "/businessLines",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.LegalEntity.V2.BusinessLineInfo, :t}}],
      response: [
        {200, {Adyen.LegalEntity.V2.BusinessLine, :t}},
        {400, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {401, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {403, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {422, {Adyen.LegalEntity.V2.ServiceError, :t}},
        {500, {Adyen.LegalEntity.V2.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @type t :: %__MODULE__{businessLines: [Adyen.LegalEntity.V2.BusinessLine.t()]}

  defstruct [:businessLines]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [businessLines: [{Adyen.LegalEntity.V2.BusinessLine, :t}]]
  end
end
