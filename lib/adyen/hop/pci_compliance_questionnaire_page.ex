defmodule Adyen.Hop.PCIComplianceQuestionnairePage do
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
  @spec post_get_pci_questionnaire_url(body :: Adyen.Hop.GetPciUrlRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Hop.GetPciUrlResponse.t()} | {:error, Adyen.Hop.ServiceError.t()}
  def post_get_pci_questionnaire_url(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Hop.PCIComplianceQuestionnairePage, :post_get_pci_questionnaire_url},
      url: "/getPciQuestionnaireUrl",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Hop.GetPciUrlRequest, :t}}],
      response: [
        {200, {Adyen.Hop.GetPciUrlResponse, :t}},
        {400, {Adyen.Hop.ServiceError, :t}},
        {401, {Adyen.Hop.ServiceError, :t}},
        {403, {Adyen.Hop.ServiceError, :t}},
        {422, {Adyen.Hop.ServiceError, :t}},
        {500, {Adyen.Hop.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
