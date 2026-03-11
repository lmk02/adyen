defmodule Adyen.BinLookup.V52.General do
  @moduledoc """
  Provides API endpoints related to general
  """

  @default_client Adyen.Client

  @doc """
  Check if 3D Secure is available

  Verifies whether 3D Secure is available for the specified BIN or card brand. For 3D Secure 2, this endpoint also returns device fingerprinting keys.

  For more information, refer to [3D Secure 2](https://docs.adyen.com/online-payments/3d-secure/native-3ds2).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_get3_ds_availability(
          body :: Adyen.BinLookup.V52.ThreeDSAvailabilityRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BinLookup.V52.ThreeDSAvailabilityResponse.t()}
          | {:error, Adyen.BinLookup.V52.ServiceError.t()}
  def post_get3_ds_availability(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.BinLookup.V52.General, :post_get3_ds_availability},
      url: "/get3dsAvailability",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.BinLookup.V52.ThreeDSAvailabilityRequest, :t}}],
      response: [
        {200, {Adyen.BinLookup.V52.ThreeDSAvailabilityResponse, :t}},
        {400, {Adyen.BinLookup.V52.ServiceError, :t}},
        {401, {Adyen.BinLookup.V52.ServiceError, :t}},
        {403, {Adyen.BinLookup.V52.ServiceError, :t}},
        {422, {Adyen.BinLookup.V52.ServiceError, :t}},
        {500, {Adyen.BinLookup.V52.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a fees cost estimate

  >This API is available only for merchants operating in Australia, the EU, and the UK.

  Use the Adyen Cost Estimation API to pre-calculate interchange and scheme fee costs. Knowing these costs prior actual payment authorisation gives you an opportunity to charge those costs to the cardholder, if necessary.

  To retrieve this information, make the call to the `/getCostEstimate` endpoint. The response to this call contains the amount of the interchange and scheme fees charged by the network for this transaction, and also which surcharging policy is possible (based on current regulations).

  > Since not all information is known in advance (for example, if the cardholder will successfully authenticate via 3D Secure or if you also plan to provide additional Level 2/3 data), the returned amounts are based on a set of assumption criteria you define in the `assumptions` parameter.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_get_cost_estimate(
          body :: Adyen.BinLookup.V52.CostEstimateRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.BinLookup.V52.CostEstimateResponse.t()}
          | {:error, Adyen.BinLookup.V52.ServiceError.t()}
  def post_get_cost_estimate(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.BinLookup.V52.General, :post_get_cost_estimate},
      url: "/getCostEstimate",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.BinLookup.V52.CostEstimateRequest, :t}}],
      response: [
        {200, {Adyen.BinLookup.V52.CostEstimateResponse, :t}},
        {400, {Adyen.BinLookup.V52.ServiceError, :t}},
        {401, {Adyen.BinLookup.V52.ServiceError, :t}},
        {403, {Adyen.BinLookup.V52.ServiceError, :t}},
        {422, {Adyen.BinLookup.V52.ServiceError, :t}},
        {500, {Adyen.BinLookup.V52.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
