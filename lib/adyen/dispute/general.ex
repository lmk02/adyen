defmodule Adyen.Dispute.General do
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
  @spec post_accept_dispute(body :: Adyen.Dispute.AcceptDisputeRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Dispute.AcceptDisputeResponse.t()}
          | {:error, Adyen.Dispute.ServiceError.t()}
  def post_accept_dispute(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Dispute.General, :post_accept_dispute},
      url: "/acceptDispute",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Dispute.AcceptDisputeRequest, :t}}],
      response: [
        {200, {Adyen.Dispute.AcceptDisputeResponse, :t}},
        {400, {Adyen.Dispute.ServiceError, :t}},
        {401, {Adyen.Dispute.ServiceError, :t}},
        {403, {Adyen.Dispute.ServiceError, :t}},
        {422, {Adyen.Dispute.ServiceError, :t}},
        {500, {Adyen.Dispute.ServiceError, :t}}
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
  @spec post_defend_dispute(body :: Adyen.Dispute.DefendDisputeRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Dispute.DefendDisputeResponse.t()}
          | {:error, Adyen.Dispute.ServiceError.t()}
  def post_defend_dispute(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Dispute.General, :post_defend_dispute},
      url: "/defendDispute",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Dispute.DefendDisputeRequest, :t}}],
      response: [
        {200, {Adyen.Dispute.DefendDisputeResponse, :t}},
        {400, {Adyen.Dispute.ServiceError, :t}},
        {401, {Adyen.Dispute.ServiceError, :t}},
        {403, {Adyen.Dispute.ServiceError, :t}},
        {422, {Adyen.Dispute.ServiceError, :t}},
        {500, {Adyen.Dispute.ServiceError, :t}}
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
          body :: Adyen.Dispute.DeleteDefenseDocumentRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Dispute.DeleteDefenseDocumentResponse.t()}
          | {:error, Adyen.Dispute.ServiceError.t()}
  def post_delete_dispute_defense_document(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Dispute.General, :post_delete_dispute_defense_document},
      url: "/deleteDisputeDefenseDocument",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Dispute.DeleteDefenseDocumentRequest, :t}}],
      response: [
        {200, {Adyen.Dispute.DeleteDefenseDocumentResponse, :t}},
        {400, {Adyen.Dispute.ServiceError, :t}},
        {401, {Adyen.Dispute.ServiceError, :t}},
        {403, {Adyen.Dispute.ServiceError, :t}},
        {422, {Adyen.Dispute.ServiceError, :t}},
        {500, {Adyen.Dispute.ServiceError, :t}}
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
          body :: Adyen.Dispute.DefenseReasonsRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Dispute.DefenseReasonsResponse.t()}
          | {:error, Adyen.Dispute.ServiceError.t()}
  def post_retrieve_applicable_defense_reasons(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Dispute.General, :post_retrieve_applicable_defense_reasons},
      url: "/retrieveApplicableDefenseReasons",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Dispute.DefenseReasonsRequest, :t}}],
      response: [
        {200, {Adyen.Dispute.DefenseReasonsResponse, :t}},
        {400, {Adyen.Dispute.ServiceError, :t}},
        {401, {Adyen.Dispute.ServiceError, :t}},
        {403, {Adyen.Dispute.ServiceError, :t}},
        {422, {Adyen.Dispute.ServiceError, :t}},
        {500, {Adyen.Dispute.ServiceError, :t}}
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
          body :: Adyen.Dispute.SupplyDefenseDocumentRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Dispute.SupplyDefenseDocumentResponse.t()}
          | {:error, Adyen.Dispute.ServiceError.t()}
  def post_supply_defense_document(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Dispute.General, :post_supply_defense_document},
      url: "/supplyDefenseDocument",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Dispute.SupplyDefenseDocumentRequest, :t}}],
      response: [
        {200, {Adyen.Dispute.SupplyDefenseDocumentResponse, :t}},
        {400, {Adyen.Dispute.ServiceError, :t}},
        {401, {Adyen.Dispute.ServiceError, :t}},
        {403, {Adyen.Dispute.ServiceError, :t}},
        {422, {Adyen.Dispute.ServiceError, :t}},
        {500, {Adyen.Dispute.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
