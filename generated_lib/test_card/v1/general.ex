defmodule Adyen.TestCard.V1.General do
  @moduledoc """
  Provides API endpoint related to general
  """

  @default_client Adyen.Client

  @doc """
  Creates one or more test card ranges.

  Creates one or more test card ranges.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_create_test_card_ranges(
          body :: Adyen.TestCard.V1.CreateTestCardRangesRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.TestCard.V1.CreateTestCardRangesResult.t()}
          | {:error, Adyen.TestCard.V1.ServiceError.t()}
  def post_create_test_card_ranges(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.TestCard.V1.General, :post_create_test_card_ranges},
      url: "/createTestCardRanges",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.TestCard.V1.CreateTestCardRangesRequest, :t}}],
      response: [
        {200, {Adyen.TestCard.V1.CreateTestCardRangesResult, :t}},
        {400, {Adyen.TestCard.V1.ServiceError, :t}},
        {401, {Adyen.TestCard.V1.ServiceError, :t}},
        {403, {Adyen.TestCard.V1.ServiceError, :t}},
        {422, {Adyen.TestCard.V1.ServiceError, :t}},
        {500, {Adyen.TestCard.V1.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
