defmodule Adyen.BalancePlatform.BankAccountValidation do
  @moduledoc """
  Provides API endpoint related to bank account validation
  """

  alias Adyen.BalancePlatform.BankAccountIdentificationValidationRequest
  alias Adyen.BalancePlatform.RestServiceError

  @default_client Adyen.Client

  @doc """
  Validate a bank account

  Validates bank account identification details. You can use this endpoint to validate bank account details before you [make a transfer](https://docs.adyen.com/api-explorer/transfers/latest/post/transfers) or [create a transfer instrument](https://docs.adyen.com/api-explorer/legalentity/latest/post/transferInstruments).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec create_validate_bank_account_identification(
          body :: BankAccountIdentificationValidationRequest.t(),
          opts :: keyword
        ) :: :ok | {:error, RestServiceError.t()}
  def create_validate_bank_account_identification(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.BalancePlatform.BankAccountValidation, :create_validate_bank_account_identification},
      url: "/validateBankAccountIdentification",
      body: body,
      method: :post,
      request: [
        {"application/json", {BankAccountIdentificationValidationRequest, :t}}
      ],
      response: [
        {200, :null},
        {401, {RestServiceError, :t}},
        {403, {RestServiceError, :t}},
        {422, {RestServiceError, :t}},
        {500, {RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
