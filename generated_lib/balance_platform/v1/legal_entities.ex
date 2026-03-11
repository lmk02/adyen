defmodule Adyen.BalancePlatform.V1.LegalEntities do
  @moduledoc """
  Provides API endpoints related to legal entities
  """

  @default_client Adyen.Client

  @doc """
  Get a legal entity

  Returns a legal entity.
  """
  @spec get_legal_entities_id(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.BalancePlatform.V1.LegalEntity.t()}
          | {:error, Adyen.BalancePlatform.V1.ServiceError.t()}
  def get_legal_entities_id(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.BalancePlatform.V1.LegalEntities, :get_legal_entities_id},
      url: "/legalEntities/#{id}",
      method: :get,
      response: [
        {200, {Adyen.BalancePlatform.V1.LegalEntity, :t}},
        {400, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {401, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {403, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {422, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {500, {Adyen.BalancePlatform.V1.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update a legal entity

  Updates a legal entity.

   >To change the legal entity type, include only the new `type` in your request. To update the `entityAssociations` array, you need to replace the entire array. For example, if the array has 3 entries and you want to remove 1 entry, you need to PATCH the resource with the remaining 2 entries.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_legal_entities_id(
          id :: String.t(),
          body :: Adyen.BalancePlatform.V1.LegalEntityInfo.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.V1.LegalEntity.t()}
          | {:error, Adyen.BalancePlatform.V1.ServiceError.t()}
  def patch_legal_entities_id(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call: {Adyen.BalancePlatform.V1.LegalEntities, :patch_legal_entities_id},
      url: "/legalEntities/#{id}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.BalancePlatform.V1.LegalEntityInfo, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.V1.LegalEntity, :t}},
        {400, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {401, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {403, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {422, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {500, {Adyen.BalancePlatform.V1.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create a legal entity

  Creates a legal entity. 

  This resource contains information about the user that will be onboarded in your platform. Adyen uses this information to perform verification checks as required by payment industry regulations. Adyen informs you of the verification results through webhooks or API responses. 


  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_legal_entities(
          body :: Adyen.BalancePlatform.V1.LegalEntityInfoRequiredType.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BalancePlatform.V1.LegalEntity.t()}
          | {:error, Adyen.BalancePlatform.V1.ServiceError.t()}
  def post_legal_entities(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.BalancePlatform.V1.LegalEntities, :post_legal_entities},
      url: "/legalEntities",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.BalancePlatform.V1.LegalEntityInfoRequiredType, :t}}],
      response: [
        {200, {Adyen.BalancePlatform.V1.LegalEntity, :t}},
        {400, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {401, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {403, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {422, {Adyen.BalancePlatform.V1.ServiceError, :t}},
        {500, {Adyen.BalancePlatform.V1.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
