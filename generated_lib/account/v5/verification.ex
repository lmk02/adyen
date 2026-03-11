defmodule Adyen.Account.V5.Verification do
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
          body :: Adyen.Account.V5.PerformVerificationRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Account.V5.GenericResponse.t()}
          | {:error, Adyen.Account.V5.ServiceError.t()}
  def post_check_account_holder(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Account.V5.Verification, :post_check_account_holder},
      url: "/checkAccountHolder",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Account.V5.PerformVerificationRequest, :t}}],
      response: [
        {200, {Adyen.Account.V5.GenericResponse, :t}},
        {202, {Adyen.Account.V5.GenericResponse, :t}},
        {400, {Adyen.Account.V5.ServiceError, :t}},
        {401, {Adyen.Account.V5.ServiceError, :t}},
        {403, {Adyen.Account.V5.ServiceError, :t}},
        {422, {Adyen.Account.V5.ServiceError, :t}},
        {500, {Adyen.Account.V5.ServiceError, :t}}
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
          body :: Adyen.Account.V5.DeleteBankAccountRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Account.V5.GenericResponse.t()}
          | {:error, Adyen.Account.V5.ServiceError.t()}
  def post_delete_bank_accounts(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Account.V5.Verification, :post_delete_bank_accounts},
      url: "/deleteBankAccounts",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Account.V5.DeleteBankAccountRequest, :t}}],
      response: [
        {200, {Adyen.Account.V5.GenericResponse, :t}},
        {202, {Adyen.Account.V5.GenericResponse, :t}},
        {400, {Adyen.Account.V5.ServiceError, :t}},
        {401, {Adyen.Account.V5.ServiceError, :t}},
        {403, {Adyen.Account.V5.ServiceError, :t}},
        {422, {Adyen.Account.V5.ServiceError, :t}},
        {500, {Adyen.Account.V5.ServiceError, :t}}
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
          body :: Adyen.Account.V5.DeleteLegalArrangementRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Account.V5.GenericResponse.t()}
          | {:error, Adyen.Account.V5.ServiceError.t()}
  def post_delete_legal_arrangements(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Account.V5.Verification, :post_delete_legal_arrangements},
      url: "/deleteLegalArrangements",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Account.V5.DeleteLegalArrangementRequest, :t}}],
      response: [
        {200, {Adyen.Account.V5.GenericResponse, :t}},
        {202, {Adyen.Account.V5.GenericResponse, :t}},
        {400, {Adyen.Account.V5.ServiceError, :t}},
        {401, {Adyen.Account.V5.ServiceError, :t}},
        {403, {Adyen.Account.V5.ServiceError, :t}},
        {422, {Adyen.Account.V5.ServiceError, :t}},
        {500, {Adyen.Account.V5.ServiceError, :t}}
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
          body :: Adyen.Account.V5.DeletePayoutMethodRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Account.V5.GenericResponse.t()}
          | {:error, Adyen.Account.V5.ServiceError.t()}
  def post_delete_payout_methods(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Account.V5.Verification, :post_delete_payout_methods},
      url: "/deletePayoutMethods",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Account.V5.DeletePayoutMethodRequest, :t}}],
      response: [
        {200, {Adyen.Account.V5.GenericResponse, :t}},
        {202, {Adyen.Account.V5.GenericResponse, :t}},
        {400, {Adyen.Account.V5.ServiceError, :t}},
        {401, {Adyen.Account.V5.ServiceError, :t}},
        {403, {Adyen.Account.V5.ServiceError, :t}},
        {422, {Adyen.Account.V5.ServiceError, :t}},
        {500, {Adyen.Account.V5.ServiceError, :t}}
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
          body :: Adyen.Account.V5.DeleteShareholderRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Account.V5.GenericResponse.t()}
          | {:error, Adyen.Account.V5.ServiceError.t()}
  def post_delete_shareholders(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Account.V5.Verification, :post_delete_shareholders},
      url: "/deleteShareholders",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Account.V5.DeleteShareholderRequest, :t}}],
      response: [
        {200, {Adyen.Account.V5.GenericResponse, :t}},
        {202, {Adyen.Account.V5.GenericResponse, :t}},
        {400, {Adyen.Account.V5.ServiceError, :t}},
        {401, {Adyen.Account.V5.ServiceError, :t}},
        {403, {Adyen.Account.V5.ServiceError, :t}},
        {422, {Adyen.Account.V5.ServiceError, :t}},
        {500, {Adyen.Account.V5.ServiceError, :t}}
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
          body :: Adyen.Account.V5.DeleteSignatoriesRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Account.V5.GenericResponse.t()}
          | {:error, Adyen.Account.V5.ServiceError.t()}
  def post_delete_signatories(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Account.V5.Verification, :post_delete_signatories},
      url: "/deleteSignatories",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Account.V5.DeleteSignatoriesRequest, :t}}],
      response: [
        {200, {Adyen.Account.V5.GenericResponse, :t}},
        {202, {Adyen.Account.V5.GenericResponse, :t}},
        {400, {Adyen.Account.V5.ServiceError, :t}},
        {401, {Adyen.Account.V5.ServiceError, :t}},
        {403, {Adyen.Account.V5.ServiceError, :t}},
        {422, {Adyen.Account.V5.ServiceError, :t}},
        {500, {Adyen.Account.V5.ServiceError, :t}}
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
          body :: Adyen.Account.V5.GetUploadedDocumentsRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Account.V5.GetUploadedDocumentsResponse.t()}
          | {:error, Adyen.Account.V5.ServiceError.t()}
  def post_get_uploaded_documents(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Account.V5.Verification, :post_get_uploaded_documents},
      url: "/getUploadedDocuments",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Account.V5.GetUploadedDocumentsRequest, :t}}],
      response: [
        {200, {Adyen.Account.V5.GetUploadedDocumentsResponse, :t}},
        {400, {Adyen.Account.V5.ServiceError, :t}},
        {401, {Adyen.Account.V5.ServiceError, :t}},
        {403, {Adyen.Account.V5.ServiceError, :t}},
        {422, {Adyen.Account.V5.ServiceError, :t}},
        {500, {Adyen.Account.V5.ServiceError, :t}}
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
  @spec post_upload_document(body :: Adyen.Account.V5.UploadDocumentRequest.t(), opts :: keyword) ::
          {:ok, Adyen.Account.V5.UpdateAccountHolderResponse.t()}
          | {:error, Adyen.Account.V5.ServiceError.t()}
  def post_upload_document(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Account.V5.Verification, :post_upload_document},
      url: "/uploadDocument",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Account.V5.UploadDocumentRequest, :t}}],
      response: [
        {200, {Adyen.Account.V5.UpdateAccountHolderResponse, :t}},
        {202, {Adyen.Account.V5.UpdateAccountHolderResponse, :t}},
        {400, {Adyen.Account.V5.ServiceError, :t}},
        {401, {Adyen.Account.V5.ServiceError, :t}},
        {403, {Adyen.Account.V5.ServiceError, :t}},
        {422, {Adyen.Account.V5.ServiceError, :t}},
        {500, {Adyen.Account.V5.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
