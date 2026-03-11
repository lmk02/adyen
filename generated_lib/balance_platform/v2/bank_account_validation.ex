defmodule Adyen.BalancePlatform.V2.BankAccountValidation do
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
          body :: Adyen.BalancePlatform.V2.BankAccountIdentificationValidationRequest.t(),
          opts :: keyword
        ) :: :ok | {:error, Adyen.BalancePlatform.V2.RestServiceError.t()}
  def post_validate_bank_account_identification(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call:
        {Adyen.BalancePlatform.V2.BankAccountValidation,
         :post_validate_bank_account_identification},
      url: "/validateBankAccountIdentification",
      body: body,
      method: :post,
      request: [
        {"application/json",
         {Adyen.BalancePlatform.V2.BankAccountIdentificationValidationRequest, :t}}
      ],
      response: [
        {200, :null},
        {401, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {403, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {422, {Adyen.BalancePlatform.V2.RestServiceError, :t}},
        {500, {Adyen.BalancePlatform.V2.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
