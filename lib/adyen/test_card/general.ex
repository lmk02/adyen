defmodule Adyen.TestCard.General do
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
          body :: Adyen.TestCard.CreateTestCardRangesRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.TestCard.CreateTestCardRangesResult.t()}
          | {:error, Adyen.TestCard.ServiceError.t()}
  def post_create_test_card_ranges(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.TestCard.General, :post_create_test_card_ranges},
      url: "/createTestCardRanges",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.TestCard.CreateTestCardRangesRequest, :t}}],
      response: [
        {200, {Adyen.TestCard.CreateTestCardRangesResult, :t}},
        {400, {Adyen.TestCard.ServiceError, :t}},
        {401, {Adyen.TestCard.ServiceError, :t}},
        {403, {Adyen.TestCard.ServiceError, :t}},
        {422, {Adyen.TestCard.ServiceError, :t}},
        {500, {Adyen.TestCard.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
