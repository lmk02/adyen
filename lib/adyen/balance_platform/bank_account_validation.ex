defmodule Adyen.BalancePlatform.BankAccountValidation do
  @moduledoc """
  Provides API endpoint related to bank account validation
  """

  @default_client Adyen.Client

  @doc """
  Validate a bank account

  Validates bank account identification details. You can use this endpoint to validate bank account details before you [make a transfer](https://docs.adyen.com/api-explorer/transfers/latest/post/transfers) or [create a transfer instrument](https://docs.adyen.com/api-explorer/legalentity/latest/post/transferInstruments).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_validate_bank_account_identification(
          body :: Adyen.BalancePlatform.BankAccountIdentificationValidationRequest.t(),
          opts :: keyword
        ) :: :ok | {:error, Adyen.BalancePlatform.RestServiceError.t()}
  def post_validate_bank_account_identification(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call:
        {Adyen.BalancePlatform.BankAccountValidation, :post_validate_bank_account_identification},
      url: "/validateBankAccountIdentification",
      body: body,
      method: :post,
      request: [
        {"application/json",
         {Adyen.BalancePlatform.BankAccountIdentificationValidationRequest, :t}}
      ],
      response: [
        {200, :null},
        {401, {Adyen.BalancePlatform.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
