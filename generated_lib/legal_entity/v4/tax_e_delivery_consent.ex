defmodule Adyen.LegalEntity.V4.TaxEDeliveryConsent do
  @moduledoc """
  Provides API endpoints related to tax e delivery consent
  """

  @default_client Adyen.Client

  @doc """
  Check the status of consent for electronic delivery of tax forms

  Returns the consent status for electronic delivery of tax forms.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.

  """
  @spec post_legal_entities_id_check_tax_electronic_delivery_consent(
          id :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.LegalEntity.V4.CheckTaxElectronicDeliveryConsentResponse.t()}
          | {:error, Adyen.LegalEntity.V4.ServiceError.t()}
  def post_legal_entities_id_check_tax_electronic_delivery_consent(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call:
        {Adyen.LegalEntity.V4.TaxEDeliveryConsent,
         :post_legal_entities_id_check_tax_electronic_delivery_consent},
      url: "/legalEntities/#{id}/checkTaxElectronicDeliveryConsent",
      method: :post,
      response: [
        {200, {Adyen.LegalEntity.V4.CheckTaxElectronicDeliveryConsentResponse, :t}},
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
  Set the consent status for electronic delivery of tax forms

  Set the consent status for electronic delivery of tax forms.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.


  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_legal_entities_id_set_tax_electronic_delivery_consent(
          id :: String.t(),
          body :: Adyen.LegalEntity.V4.SetTaxElectronicDeliveryConsentRequest.t(),
          opts :: keyword
        ) :: :ok | {:error, Adyen.LegalEntity.V4.ServiceError.t()}
  def post_legal_entities_id_set_tax_electronic_delivery_consent(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call:
        {Adyen.LegalEntity.V4.TaxEDeliveryConsent,
         :post_legal_entities_id_set_tax_electronic_delivery_consent},
      url: "/legalEntities/#{id}/setTaxElectronicDeliveryConsent",
      body: body,
      method: :post,
      request: [
        {"application/json", {Adyen.LegalEntity.V4.SetTaxElectronicDeliveryConsentRequest, :t}}
      ],
      response: [
        {200, :null},
        {400, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {401, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {403, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {422, {Adyen.LegalEntity.V4.ServiceError, :t}},
        {500, {Adyen.LegalEntity.V4.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
