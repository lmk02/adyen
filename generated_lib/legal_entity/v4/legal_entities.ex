defmodule Adyen.LegalEntity.V4.LegalEntities do
  @moduledoc """
  Provides API endpoints related to legal entities
  """

  @default_client Adyen.Client

  @doc """
  Get a legal entity

  Returns a legal entity.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.

  """
  @spec get_legal_entities_id(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.LegalEntity.V4.LegalEntity.t()}
          | {:error, Adyen.LegalEntity.V4.ServiceError.t()}
  def get_legal_entities_id(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.LegalEntity.V4.LegalEntities, :get_legal_entities_id},
      url: "/legalEntities/#{id}",
      method: :get,
      response: [
        {200, {Adyen.LegalEntity.V4.LegalEntity, :t}},
        {400, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {401, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {403, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {422, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {500, {Adyen.LegalEntity.V4.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get all business lines under a legal entity

  Returns the business lines owned by a legal entity.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.

  """
  @spec get_legal_entities_id_business_lines(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.LegalEntity.V4.BusinessLines.t()}
          | {:error, Adyen.LegalEntity.V4.ServiceError.t()}
  def get_legal_entities_id_business_lines(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.LegalEntity.V4.LegalEntities, :get_legal_entities_id_business_lines},
      url: "/legalEntities/#{id}/businessLines",
      method: :get,
      response: [
        {200, {Adyen.LegalEntity.V4.BusinessLines, :t}},
        {400, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {401, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {403, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {422, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {500, {Adyen.LegalEntity.V4.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update a legal entity

  Updates a legal entity.

   >To change the legal entity type, include only the new `type` in your request.

  If you need to update information for the legal entity, make a separate request. To update the `entityAssociations` array, you need to replace the entire array.For example, if the array has 3 entries and you want to remove 1 entry, you need to PATCH the resource with the remaining 2 entries.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.


  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_legal_entities_id(
          id :: String.t(),
          body :: Adyen.LegalEntity.V4.LegalEntityInfo.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.LegalEntity.V4.LegalEntity.t()}
          | {:error, Adyen.LegalEntity.V4.ServiceError.t()}
  def patch_legal_entities_id(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call: {Adyen.LegalEntity.V4.LegalEntities, :patch_legal_entities_id},
      url: "/legalEntities/#{id}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.LegalEntity.V4.LegalEntityInfo, :t}}],
      response: [
        {200, {Adyen.LegalEntity.V4.LegalEntity, :t}},
        {400, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {401, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {403, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {422, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {500, {Adyen.LegalEntity.V4.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create a legal entity

  Creates a legal entity. 

  This resource contains information about the user that will be onboarded in your platform. Adyen uses this information to perform verification checks as required by payment industry regulations. Adyen informs you of the verification results through webhooks or API responses.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.


  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_legal_entities(
          body :: Adyen.LegalEntity.V4.LegalEntityInfoRequiredType.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.LegalEntity.V4.LegalEntity.t()}
          | {:error, Adyen.LegalEntity.V4.ServiceError.t()}
  def post_legal_entities(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.LegalEntity.V4.LegalEntities, :post_legal_entities},
      url: "/legalEntities",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.LegalEntity.V4.LegalEntityInfoRequiredType, :t}}],
      response: [
        {200, {Adyen.LegalEntity.V4.LegalEntity, :t}},
        {400, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {401, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {403, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {422, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {500, {Adyen.LegalEntity.V4.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Check a legal entity's verification errors

  Returns the verification errors for a legal entity and its supporting entities.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.

  """
  @spec post_legal_entities_id_check_verification_errors(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.LegalEntity.V4.VerificationErrors.t()}
          | {:error, Adyen.LegalEntity.V4.ServiceError.t()}
  def post_legal_entities_id_check_verification_errors(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call:
        {Adyen.LegalEntity.V4.LegalEntities, :post_legal_entities_id_check_verification_errors},
      url: "/legalEntities/#{id}/checkVerificationErrors",
      method: :post,
      response: [
        {200, {Adyen.LegalEntity.V4.VerificationErrors, :t}},
        {400, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {401, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {403, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {422, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {500, {Adyen.LegalEntity.V4.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Confirm data review

  Confirms that your user has reviewed the data for the legal entity specified in the path. Call this endpoint to inform Adyen that your user reviewed and verified that the data is up-to-date. The endpoint returns the timestamp of when Adyen received the request.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.

  """
  @spec post_legal_entities_id_confirm_data_review(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.LegalEntity.V4.DataReviewConfirmationResponse.t()}
          | {:error, Adyen.LegalEntity.V4.ServiceError.t()}
  def post_legal_entities_id_confirm_data_review(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.LegalEntity.V4.LegalEntities, :post_legal_entities_id_confirm_data_review},
      url: "/legalEntities/#{id}/confirmDataReview",
      method: :post,
      response: [
        {200, {Adyen.LegalEntity.V4.DataReviewConfirmationResponse, :t}},
        {400, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {401, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {403, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {422, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {500, {Adyen.LegalEntity.V4.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Request periodic data review.

  Requests a periodic data review for the legal entity of the user specified in the path.
  """
  @spec post_legal_entities_id_request_periodic_review(id :: String.t(), opts :: keyword) ::
          {:ok, any} | :error
  def post_legal_entities_id_request_periodic_review(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.LegalEntity.V4.LegalEntities, :post_legal_entities_id_request_periodic_review},
      url: "/legalEntities/#{id}/requestPeriodicReview",
      method: :post,
      response: [{204, :unknown}],
      opts: opts
    })
  end
end
