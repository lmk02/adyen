defmodule Adyen.Hop.V6.PCIComplianceQuestionnairePage do
  @moduledoc """
  Provides API endpoint related to pci compliance questionnaire page
  """

  @default_client Adyen.Client

  @doc """
  Get a link to a PCI compliance questionnaire

  Returns a link to a PCI compliance questionnaire that you can send to your account holder.
   > You should only use this endpoint if you have a [partner platform setup](https://docs.adyen.com/classic-platforms/platforms-for-partners).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_get_pci_questionnaire_url(body :: Adyen.Hop.V6.GetPciUrlRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Hop.V6.GetPciUrlResponse.t()} | {:error, Adyen.Hop.V6.ServiceError.t()}
  def post_get_pci_questionnaire_url(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Hop.V6.PCIComplianceQuestionnairePage, :post_get_pci_questionnaire_url},
      url: "/getPciQuestionnaireUrl",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Hop.V6.GetPciUrlRequest, :t}}],
      response: [
        {200, {Adyen.Hop.V6.GetPciUrlResponse, :t}},
        {400, {Adyen.Hop.V6.ServiceError, :t}},
        {401, {Adyen.Hop.V6.ServiceError, :t}},
        {403, {Adyen.Hop.V6.ServiceError, :t}},
        {422, {Adyen.Hop.V6.ServiceError, :t}},
        {500, {Adyen.Hop.V6.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
