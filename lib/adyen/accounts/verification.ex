defmodule Adyen.Accounts.Verification do
  @moduledoc """
  Provides API endpoints related to verification
  """

  @default_client Adyen.Client

  @doc """
  Trigger verification

  Triggers the verification of an account holder even if the checks are not yet required for the volume that they are currently processing.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_check_account_holder(
          body :: Adyen.Accounts.PerformVerificationRequest.t(),
          opts :: keyword
        ) :: {:ok, Adyen.Accounts.GenericResponse.t()} | {:error, Adyen.Accounts.ServiceError.t()}
  def post_check_account_holder(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Accounts.Verification, :post_check_account_holder},
      url: "/checkAccountHolder",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Accounts.PerformVerificationRequest, :t}}],
      response: [
        {200, {Adyen.Accounts.GenericResponse, :t}},
        {202, {Adyen.Accounts.GenericResponse, :t}},
        {400, {Adyen.Accounts.ServiceError, :t}},
        {401, {Adyen.Accounts.ServiceError, :t}},
        {403, {Adyen.Accounts.ServiceError, :t}},
        {422, {Adyen.Accounts.ServiceError, :t}},
        {500, {Adyen.Accounts.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Delete bank accounts

  Deletes bank accounts associated with an account holder. 

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_delete_bank_accounts(
          body :: Adyen.Accounts.DeleteBankAccountRequest.t(),
          opts :: keyword
        ) :: {:ok, Adyen.Accounts.GenericResponse.t()} | {:error, Adyen.Accounts.ServiceError.t()}
  def post_delete_bank_accounts(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Accounts.Verification, :post_delete_bank_accounts},
      url: "/deleteBankAccounts",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Accounts.DeleteBankAccountRequest, :t}}],
      response: [
        {200, {Adyen.Accounts.GenericResponse, :t}},
        {202, {Adyen.Accounts.GenericResponse, :t}},
        {400, {Adyen.Accounts.ServiceError, :t}},
        {401, {Adyen.Accounts.ServiceError, :t}},
        {403, {Adyen.Accounts.ServiceError, :t}},
        {422, {Adyen.Accounts.ServiceError, :t}},
        {500, {Adyen.Accounts.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Delete legal arrangements

  Deletes legal arrangements and/or legal arrangement entities associated with an account holder.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_delete_legal_arrangements(
          body :: Adyen.Accounts.DeleteLegalArrangementRequest.t(),
          opts :: keyword
        ) :: {:ok, Adyen.Accounts.GenericResponse.t()} | {:error, Adyen.Accounts.ServiceError.t()}
  def post_delete_legal_arrangements(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Accounts.Verification, :post_delete_legal_arrangements},
      url: "/deleteLegalArrangements",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Accounts.DeleteLegalArrangementRequest, :t}}],
      response: [
        {200, {Adyen.Accounts.GenericResponse, :t}},
        {202, {Adyen.Accounts.GenericResponse, :t}},
        {400, {Adyen.Accounts.ServiceError, :t}},
        {401, {Adyen.Accounts.ServiceError, :t}},
        {403, {Adyen.Accounts.ServiceError, :t}},
        {422, {Adyen.Accounts.ServiceError, :t}},
        {500, {Adyen.Accounts.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Delete payout methods

  Deletes payout methods associated with an account holder.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_delete_payout_methods(
          body :: Adyen.Accounts.DeletePayoutMethodRequest.t(),
          opts :: keyword
        ) :: {:ok, Adyen.Accounts.GenericResponse.t()} | {:error, Adyen.Accounts.ServiceError.t()}
  def post_delete_payout_methods(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Accounts.Verification, :post_delete_payout_methods},
      url: "/deletePayoutMethods",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Accounts.DeletePayoutMethodRequest, :t}}],
      response: [
        {200, {Adyen.Accounts.GenericResponse, :t}},
        {202, {Adyen.Accounts.GenericResponse, :t}},
        {400, {Adyen.Accounts.ServiceError, :t}},
        {401, {Adyen.Accounts.ServiceError, :t}},
        {403, {Adyen.Accounts.ServiceError, :t}},
        {422, {Adyen.Accounts.ServiceError, :t}},
        {500, {Adyen.Accounts.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Delete shareholders

  Deletes shareholders associated with an account holder.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_delete_shareholders(
          body :: Adyen.Accounts.DeleteShareholderRequest.t(),
          opts :: keyword
        ) :: {:ok, Adyen.Accounts.GenericResponse.t()} | {:error, Adyen.Accounts.ServiceError.t()}
  def post_delete_shareholders(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Accounts.Verification, :post_delete_shareholders},
      url: "/deleteShareholders",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Accounts.DeleteShareholderRequest, :t}}],
      response: [
        {200, {Adyen.Accounts.GenericResponse, :t}},
        {202, {Adyen.Accounts.GenericResponse, :t}},
        {400, {Adyen.Accounts.ServiceError, :t}},
        {401, {Adyen.Accounts.ServiceError, :t}},
        {403, {Adyen.Accounts.ServiceError, :t}},
        {422, {Adyen.Accounts.ServiceError, :t}},
        {500, {Adyen.Accounts.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Delete signatories

  Deletes signatories associated with an account holder.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_delete_signatories(
          body :: Adyen.Accounts.DeleteSignatoriesRequest.t(),
          opts :: keyword
        ) :: {:ok, Adyen.Accounts.GenericResponse.t()} | {:error, Adyen.Accounts.ServiceError.t()}
  def post_delete_signatories(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Accounts.Verification, :post_delete_signatories},
      url: "/deleteSignatories",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Accounts.DeleteSignatoriesRequest, :t}}],
      response: [
        {200, {Adyen.Accounts.GenericResponse, :t}},
        {202, {Adyen.Accounts.GenericResponse, :t}},
        {400, {Adyen.Accounts.ServiceError, :t}},
        {401, {Adyen.Accounts.ServiceError, :t}},
        {403, {Adyen.Accounts.ServiceError, :t}},
        {422, {Adyen.Accounts.ServiceError, :t}},
        {500, {Adyen.Accounts.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get documents

  Returns documents that were previously uploaded for an account holder. Adyen uses the documents during the [verification process](https://docs.adyen.com/classic-platforms/verification-process).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_get_uploaded_documents(
          body :: Adyen.Accounts.GetUploadedDocumentsRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Accounts.GetUploadedDocumentsResponse.t()}
          | {:error, Adyen.Accounts.ServiceError.t()}
  def post_get_uploaded_documents(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Accounts.Verification, :post_get_uploaded_documents},
      url: "/getUploadedDocuments",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Accounts.GetUploadedDocumentsRequest, :t}}],
      response: [
        {200, {Adyen.Accounts.GetUploadedDocumentsResponse, :t}},
        {400, {Adyen.Accounts.ServiceError, :t}},
        {401, {Adyen.Accounts.ServiceError, :t}},
        {403, {Adyen.Accounts.ServiceError, :t}},
        {422, {Adyen.Accounts.ServiceError, :t}},
        {500, {Adyen.Accounts.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Upload a document

  Uploads a document for an account holder. Adyen uses the documents during the [verification process](https://docs.adyen.com/classic-platforms/verification-process).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_upload_document(body :: Adyen.Accounts.UploadDocumentRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Accounts.UpdateAccountHolderResponse.t()}
          | {:error, Adyen.Accounts.ServiceError.t()}
  def post_upload_document(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Accounts.Verification, :post_upload_document},
      url: "/uploadDocument",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Accounts.UploadDocumentRequest, :t}}],
      response: [
        {200, {Adyen.Accounts.UpdateAccountHolderResponse, :t}},
        {202, {Adyen.Accounts.UpdateAccountHolderResponse, :t}},
        {400, {Adyen.Accounts.ServiceError, :t}},
        {401, {Adyen.Accounts.ServiceError, :t}},
        {403, {Adyen.Accounts.ServiceError, :t}},
        {422, {Adyen.Accounts.ServiceError, :t}},
        {500, {Adyen.Accounts.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
