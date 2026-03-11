defmodule Adyen.TfmAPI.General do
  @moduledoc """
  Provides API endpoints related to general
  """

  @default_client Adyen.Client

  @doc """
  Assign terminals

  Assigns one or more payment terminals to a merchant account or a store. You can also use this endpoint to reassign terminals between merchant accounts or stores, and to unassign a terminal and return it to company inventory.

  >From January 1, 2025 POS Terminal Management API is deprecated and support stops on April 1, 2025. To automate the management of your terminal fleet, use our [Management API](https://docs.adyen.com/api-explorer/Management/latest/overview).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_assign_terminals(body :: Adyen.TfmAPI.AssignTerminalsRequest.t(), opts :: keyword) ::
          {:ok, Adyen.TfmAPI.AssignTerminalsResponse.t()}
          | {:error, Adyen.TfmAPI.ServiceError.t()}
  def post_assign_terminals(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.TfmAPI.General, :post_assign_terminals},
      url: "/assignTerminals",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.TfmAPI.AssignTerminalsRequest, :t}}],
      response: [
        {200, {Adyen.TfmAPI.AssignTerminalsResponse, :t}},
        {400, {Adyen.TfmAPI.ServiceError, :t}},
        {401, {Adyen.TfmAPI.ServiceError, :t}},
        {403, {Adyen.TfmAPI.ServiceError, :t}},
        {422, {Adyen.TfmAPI.ServiceError, :t}},
        {500, {Adyen.TfmAPI.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get the account or store of a terminal

  Returns the company account, merchant account, or store that a payment terminal is assigned to.

  >From January 1, 2025 POS Terminal Management API is deprecated and support stops on April 1, 2025. To automate the management of your terminal fleet, use our [Management API](https://docs.adyen.com/api-explorer/Management/latest/overview).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_find_terminal(body :: Adyen.TfmAPI.FindTerminalRequest.t(), opts :: keyword) ::
          {:ok, Adyen.TfmAPI.FindTerminalResponse.t()} | {:error, Adyen.TfmAPI.ServiceError.t()}
  def post_find_terminal(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.TfmAPI.General, :post_find_terminal},
      url: "/findTerminal",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.TfmAPI.FindTerminalRequest, :t}}],
      response: [
        {200, {Adyen.TfmAPI.FindTerminalResponse, :t}},
        {400, {Adyen.TfmAPI.ServiceError, :t}},
        {401, {Adyen.TfmAPI.ServiceError, :t}},
        {403, {Adyen.TfmAPI.ServiceError, :t}},
        {422, {Adyen.TfmAPI.ServiceError, :t}},
        {500, {Adyen.TfmAPI.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get the stores of an account

  Returns a list of stores associated with a company account or a merchant account, including the status of each store.

  >From January 1, 2025 POS Terminal Management API is deprecated and support stops on April 1, 2025. To automate the management of your terminal fleet, use our [Management API](https://docs.adyen.com/api-explorer/Management/latest/overview).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_get_stores_under_account(
          body :: Adyen.TfmAPI.GetStoresUnderAccountRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.TfmAPI.GetStoresUnderAccountResponse.t()}
          | {:error, Adyen.TfmAPI.ServiceError.t()}
  def post_get_stores_under_account(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.TfmAPI.General, :post_get_stores_under_account},
      url: "/getStoresUnderAccount",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.TfmAPI.GetStoresUnderAccountRequest, :t}}],
      response: [
        {200, {Adyen.TfmAPI.GetStoresUnderAccountResponse, :t}},
        {400, {Adyen.TfmAPI.ServiceError, :t}},
        {401, {Adyen.TfmAPI.ServiceError, :t}},
        {403, {Adyen.TfmAPI.ServiceError, :t}},
        {422, {Adyen.TfmAPI.ServiceError, :t}},
        {500, {Adyen.TfmAPI.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get the details of a terminal

  Returns the details of a payment terminal, including where the terminal is assigned to. The response returns the same details that are provided in the terminal list in your Customer Area and in the Terminal Fleet report.

  >From January 1, 2025 POS Terminal Management API is deprecated and support stops on April 1, 2025. To automate the management of your terminal fleet, use our [Management API](https://docs.adyen.com/api-explorer/Management/latest/overview).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_get_terminal_details(
          body :: Adyen.TfmAPI.GetTerminalDetailsRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.TfmAPI.GetTerminalDetailsResponse.t()}
          | {:error, Adyen.TfmAPI.ServiceError.t()}
  def post_get_terminal_details(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.TfmAPI.General, :post_get_terminal_details},
      url: "/getTerminalDetails",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.TfmAPI.GetTerminalDetailsRequest, :t}}],
      response: [
        {200, {Adyen.TfmAPI.GetTerminalDetailsResponse, :t}},
        {400, {Adyen.TfmAPI.ServiceError, :t}},
        {401, {Adyen.TfmAPI.ServiceError, :t}},
        {403, {Adyen.TfmAPI.ServiceError, :t}},
        {422, {Adyen.TfmAPI.ServiceError, :t}},
        {500, {Adyen.TfmAPI.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get the list of terminals

  Returns a list of payment terminals associated with a company account, merchant account, or store. The response shows whether the terminals are in the inventory, or in-store (ready for boarding or already boarded).

  >From January 1, 2025 POS Terminal Management API is deprecated and support stops on April 1, 2025. To automate the management of your terminal fleet, use our [Management API](https://docs.adyen.com/api-explorer/Management/latest/overview).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_get_terminals_under_account(
          body :: Adyen.TfmAPI.GetTerminalsUnderAccountRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.TfmAPI.GetTerminalsUnderAccountResponse.t()}
          | {:error, Adyen.TfmAPI.ServiceError.t()}
  def post_get_terminals_under_account(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.TfmAPI.General, :post_get_terminals_under_account},
      url: "/getTerminalsUnderAccount",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.TfmAPI.GetTerminalsUnderAccountRequest, :t}}],
      response: [
        {200, {Adyen.TfmAPI.GetTerminalsUnderAccountResponse, :t}},
        {400, {Adyen.TfmAPI.ServiceError, :t}},
        {401, {Adyen.TfmAPI.ServiceError, :t}},
        {403, {Adyen.TfmAPI.ServiceError, :t}},
        {422, {Adyen.TfmAPI.ServiceError, :t}},
        {500, {Adyen.TfmAPI.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
