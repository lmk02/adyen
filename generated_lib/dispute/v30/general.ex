defmodule Adyen.Dispute.V30.General do
  @moduledoc """
  Provides API endpoints related to general
  """

  @default_client Adyen.Client

  @doc """
  Accept a dispute

  Accepts a specific dispute.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_accept_dispute(body :: Adyen.Dispute.V30.AcceptDisputeRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Dispute.V30.AcceptDisputeResponse.t()}
          | {:error, Adyen.Dispute.V30.ServiceError.t()}
  def post_accept_dispute(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Dispute.V30.General, :post_accept_dispute},
      url: "/acceptDispute",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Dispute.V30.AcceptDisputeRequest, :t}}],
      response: [
        {200, {Adyen.Dispute.V30.AcceptDisputeResponse, :t}},
        {400, {Adyen.Dispute.V30.ServiceError, :t}},
        {401, {Adyen.Dispute.V30.ServiceError, :t}},
        {403, {Adyen.Dispute.V30.ServiceError, :t}},
        {422, {Adyen.Dispute.V30.ServiceError, :t}},
        {500, {Adyen.Dispute.V30.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Defend a dispute

  Defends a specific dispute.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_defend_dispute(body :: Adyen.Dispute.V30.DefendDisputeRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Dispute.V30.DefendDisputeResponse.t()}
          | {:error, Adyen.Dispute.V30.ServiceError.t()}
  def post_defend_dispute(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Dispute.V30.General, :post_defend_dispute},
      url: "/defendDispute",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Dispute.V30.DefendDisputeRequest, :t}}],
      response: [
        {200, {Adyen.Dispute.V30.DefendDisputeResponse, :t}},
        {400, {Adyen.Dispute.V30.ServiceError, :t}},
        {401, {Adyen.Dispute.V30.ServiceError, :t}},
        {403, {Adyen.Dispute.V30.ServiceError, :t}},
        {422, {Adyen.Dispute.V30.ServiceError, :t}},
        {500, {Adyen.Dispute.V30.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Delete a defense document

  Deletes a specific dispute defense document that was supplied earlier.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_delete_dispute_defense_document(
          body :: Adyen.Dispute.V30.DeleteDefenseDocumentRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Dispute.V30.DeleteDefenseDocumentResponse.t()}
          | {:error, Adyen.Dispute.V30.ServiceError.t()}
  def post_delete_dispute_defense_document(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Dispute.V30.General, :post_delete_dispute_defense_document},
      url: "/deleteDisputeDefenseDocument",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Dispute.V30.DeleteDefenseDocumentRequest, :t}}],
      response: [
        {200, {Adyen.Dispute.V30.DeleteDefenseDocumentResponse, :t}},
        {400, {Adyen.Dispute.V30.ServiceError, :t}},
        {401, {Adyen.Dispute.V30.ServiceError, :t}},
        {403, {Adyen.Dispute.V30.ServiceError, :t}},
        {422, {Adyen.Dispute.V30.ServiceError, :t}},
        {500, {Adyen.Dispute.V30.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get applicable defense reasons

  Returns a list of all applicable defense reasons to defend a specific dispute.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_retrieve_applicable_defense_reasons(
          body :: Adyen.Dispute.V30.DefenseReasonsRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Dispute.V30.DefenseReasonsResponse.t()}
          | {:error, Adyen.Dispute.V30.ServiceError.t()}
  def post_retrieve_applicable_defense_reasons(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Dispute.V30.General, :post_retrieve_applicable_defense_reasons},
      url: "/retrieveApplicableDefenseReasons",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Dispute.V30.DefenseReasonsRequest, :t}}],
      response: [
        {200, {Adyen.Dispute.V30.DefenseReasonsResponse, :t}},
        {400, {Adyen.Dispute.V30.ServiceError, :t}},
        {401, {Adyen.Dispute.V30.ServiceError, :t}},
        {403, {Adyen.Dispute.V30.ServiceError, :t}},
        {422, {Adyen.Dispute.V30.ServiceError, :t}},
        {500, {Adyen.Dispute.V30.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Supply a defense document

  Supplies a specific dispute defense document.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_supply_defense_document(
          body :: Adyen.Dispute.V30.SupplyDefenseDocumentRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Dispute.V30.SupplyDefenseDocumentResponse.t()}
          | {:error, Adyen.Dispute.V30.ServiceError.t()}
  def post_supply_defense_document(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Dispute.V30.General, :post_supply_defense_document},
      url: "/supplyDefenseDocument",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Dispute.V30.SupplyDefenseDocumentRequest, :t}}],
      response: [
        {200, {Adyen.Dispute.V30.SupplyDefenseDocumentResponse, :t}},
        {400, {Adyen.Dispute.V30.ServiceError, :t}},
        {401, {Adyen.Dispute.V30.ServiceError, :t}},
        {403, {Adyen.Dispute.V30.ServiceError, :t}},
        {422, {Adyen.Dispute.V30.ServiceError, :t}},
        {500, {Adyen.Dispute.V30.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
