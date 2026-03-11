defmodule Adyen.LegalEntity.PCIQuestionnaires do
  @moduledoc """
  Provides API endpoints related to pci questionnaires
  """

  @default_client Adyen.Client

  @doc """
  Get PCI questionnaire details

  Get a list of signed PCI questionnaires.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.

  """
  @spec get_legal_entities_id_pci_questionnaires(id :: String.t(), opts :: keyword) ::
          {:ok, Adyen.LegalEntity.GetPciQuestionnaireInfosResponse.t()}
          | {:error, Adyen.LegalEntity.ServiceError.t()}
  def get_legal_entities_id_pci_questionnaires(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {Adyen.LegalEntity.PCIQuestionnaires, :get_legal_entities_id_pci_questionnaires},
      url: "/legalEntities/#{id}/pciQuestionnaires",
      method: :get,
      response: [
        {200, {Adyen.LegalEntity.GetPciQuestionnaireInfosResponse, :t}},
        {400, {Adyen.LegalEntity.ServiceError, :t}},
        {401, {Adyen.LegalEntity.ServiceError, :t}},
        {403, {Adyen.LegalEntity.ServiceError, :t}},
        {422, {Adyen.LegalEntity.ServiceError, :t}},
        {500, {Adyen.LegalEntity.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get PCI questionnaire

  Returns the signed PCI questionnaire.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.

  """
  @spec get_legal_entities_id_pci_questionnaires_pciid(
          id :: String.t(),
          pciid :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.LegalEntity.GetPciQuestionnaireResponse.t()}
          | {:error, Adyen.LegalEntity.ServiceError.t()}
  def get_legal_entities_id_pci_questionnaires_pciid(id, pciid, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, pciid: pciid],
      call:
        {Adyen.LegalEntity.PCIQuestionnaires, :get_legal_entities_id_pci_questionnaires_pciid},
      url: "/legalEntities/#{id}/pciQuestionnaires/#{pciid}",
      method: :get,
      response: [
        {200, {Adyen.LegalEntity.GetPciQuestionnaireResponse, :t}},
        {400, {Adyen.LegalEntity.ServiceError, :t}},
        {401, {Adyen.LegalEntity.ServiceError, :t}},
        {403, {Adyen.LegalEntity.ServiceError, :t}},
        {422, {Adyen.LegalEntity.ServiceError, :t}},
        {500, {Adyen.LegalEntity.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Generate PCI questionnaire

  Generates the required PCI questionnaires based on the user's [salesChannel](https://docs.adyen.com/api-explorer/#/legalentity/latest/post/businessLines__reqParam_salesChannels).

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.


  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_legal_entities_id_pci_questionnaires_generate_pci_templates(
          id :: String.t(),
          body :: Adyen.LegalEntity.GeneratePciDescriptionRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.LegalEntity.GeneratePciDescriptionResponse.t()}
          | {:error, Adyen.LegalEntity.ServiceError.t()}
  def post_legal_entities_id_pci_questionnaires_generate_pci_templates(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call:
        {Adyen.LegalEntity.PCIQuestionnaires,
         :post_legal_entities_id_pci_questionnaires_generate_pci_templates},
      url: "/legalEntities/#{id}/pciQuestionnaires/generatePciTemplates",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.LegalEntity.GeneratePciDescriptionRequest, :t}}],
      response: [
        {200, {Adyen.LegalEntity.GeneratePciDescriptionResponse, :t}},
        {400, {Adyen.LegalEntity.ServiceError, :t}},
        {401, {Adyen.LegalEntity.ServiceError, :t}},
        {403, {Adyen.LegalEntity.ServiceError, :t}},
        {422, {Adyen.LegalEntity.ServiceError, :t}},
        {500, {Adyen.LegalEntity.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Sign PCI questionnaire

  Signs the required PCI questionnaire.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.


  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_legal_entities_id_pci_questionnaires_sign_pci_templates(
          id :: String.t(),
          body :: Adyen.LegalEntity.PciSigningRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.LegalEntity.PciSigningResponse.t()}
          | {:error, Adyen.LegalEntity.ServiceError.t()}
  def post_legal_entities_id_pci_questionnaires_sign_pci_templates(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call:
        {Adyen.LegalEntity.PCIQuestionnaires,
         :post_legal_entities_id_pci_questionnaires_sign_pci_templates},
      url: "/legalEntities/#{id}/pciQuestionnaires/signPciTemplates",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.LegalEntity.PciSigningRequest, :t}}],
      response: [
        {200, {Adyen.LegalEntity.PciSigningResponse, :t}},
        {400, {Adyen.LegalEntity.ServiceError, :t}},
        {401, {Adyen.LegalEntity.ServiceError, :t}},
        {403, {Adyen.LegalEntity.ServiceError, :t}},
        {422, {Adyen.LegalEntity.ServiceError, :t}},
        {500, {Adyen.LegalEntity.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Calculate PCI status of a legal entity

  Calculate PCI status of a legal entity.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.


  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_legal_entities_id_pci_questionnaires_signing_required(
          id :: String.t(),
          body :: Adyen.LegalEntity.CalculatePciStatusRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.LegalEntity.CalculatePciStatusResponse.t()}
          | {:error, Adyen.LegalEntity.ServiceError.t()}
  def post_legal_entities_id_pci_questionnaires_signing_required(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call:
        {Adyen.LegalEntity.PCIQuestionnaires,
         :post_legal_entities_id_pci_questionnaires_signing_required},
      url: "/legalEntities/#{id}/pciQuestionnaires/signingRequired",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.LegalEntity.CalculatePciStatusRequest, :t}}],
      response: [
        {200, {Adyen.LegalEntity.CalculatePciStatusResponse, :t}},
        {400, {Adyen.LegalEntity.ServiceError, :t}},
        {401, {Adyen.LegalEntity.ServiceError, :t}},
        {403, {Adyen.LegalEntity.ServiceError, :t}},
        {422, {Adyen.LegalEntity.ServiceError, :t}},
        {500, {Adyen.LegalEntity.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
