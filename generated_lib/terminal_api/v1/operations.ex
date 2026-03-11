defmodule Adyen.TerminalAPI.V1.Operations do
  @moduledoc """
  Provides API endpoints related to operations
  """

  @default_client Adyen.Client

  @doc """
  Abort Request

  Body of the Abort Request message.
  It conveys Information requested for identification of the message request carrying the transaction to abort. A message to display on the CustomerError Device could be sent by the Sale System (DisplayOutput).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec abort_post(body :: Adyen.TerminalAPI.V1.AbortRequest.t(), opts :: keyword) ::
          {:ok, map} | :error
  def abort_post(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.TerminalAPI.V1.Operations, :abort_post},
      url: "/abort",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.TerminalAPI.V1.AbortRequest, :t}}],
      response: [{200, :map}],
      opts: opts
    })
  end

  @doc """
  Admin Request

  Empty.
  Content of the Custom Admin Request message.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec admin_post(body :: Adyen.TerminalAPI.V1.AdminRequest.t(), opts :: keyword) ::
          {:ok, Adyen.TerminalAPI.V1.AdminResponse.t()} | :error
  def admin_post(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.TerminalAPI.V1.Operations, :admin_post},
      url: "/admin",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.TerminalAPI.V1.AdminRequest, :t}}],
      response: [{200, {Adyen.TerminalAPI.V1.AdminResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  BalanceInquiry Request

  It conveys Information related to the account for which a Balance Inquiry is requested.
  Content of the Balance Inquiry Request message.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec balanceinquiry_post(
          body :: Adyen.TerminalAPI.V1.BalanceInquiryRequest.t(),
          opts :: keyword
        ) :: {:ok, Adyen.TerminalAPI.V1.BalanceInquiryResponse.t()} | :error
  def balanceinquiry_post(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.TerminalAPI.V1.Operations, :balanceinquiry_post},
      url: "/balanceinquiry",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.TerminalAPI.V1.BalanceInquiryRequest, :t}}],
      response: [{200, {Adyen.TerminalAPI.V1.BalanceInquiryResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  CardAcquisition Request

  It conveys Information related to the payment and loyalty cards to read and analyse. This message pair is usually followed by a message pair (e.g. payment or loyalty) which refers to this Card Acquisition message pair.
  Content of the Card Acquisition Request message.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec cardacquisition_post(
          body :: Adyen.TerminalAPI.V1.CardAcquisitionRequest.t(),
          opts :: keyword
        ) :: {:ok, Adyen.TerminalAPI.V1.CardAcquisitionResponse.t()} | :error
  def cardacquisition_post(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.TerminalAPI.V1.Operations, :cardacquisition_post},
      url: "/cardacquisition",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.TerminalAPI.V1.CardAcquisitionRequest, :t}}],
      response: [{200, {Adyen.TerminalAPI.V1.CardAcquisitionResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  CardReaderAPDU Request

  It contains the APDU request to send to the chip of the card, and a possible invitation message to display on the CashierInterface or the CustomerInterface.
  Content of the Card Reader APDU Request message.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec cardreaderapdu_post(
          body :: Adyen.TerminalAPI.V1.CardReaderAPDURequest.t(),
          opts :: keyword
        ) :: {:ok, Adyen.TerminalAPI.V1.CardReaderAPDUResponse.t()} | :error
  def cardreaderapdu_post(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.TerminalAPI.V1.Operations, :cardreaderapdu_post},
      url: "/cardreaderapdu",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.TerminalAPI.V1.CardReaderAPDURequest, :t}}],
      response: [{200, {Adyen.TerminalAPI.V1.CardReaderAPDUResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Diagnosis Request

  It conveys Information related to the target POI for which the diagnosis is requested.
  Content of the Diagnosis Request message.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec diagnosis_post(body :: Adyen.TerminalAPI.V1.DiagnosisRequest.t(), opts :: keyword) ::
          {:ok, Adyen.TerminalAPI.V1.DiagnosisResponse.t()} | :error
  def diagnosis_post(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.TerminalAPI.V1.Operations, :diagnosis_post},
      url: "/diagnosis",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.TerminalAPI.V1.DiagnosisRequest, :t}}],
      response: [{200, {Adyen.TerminalAPI.V1.DiagnosisResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Display Request

  It conveys the data to display and the way to process the display. It contains the complete content to display. It might contain an operation (the DisplayOutput element) per Display Device type.
  Content of the Display Request message.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec display_post(body :: Adyen.TerminalAPI.V1.DisplayRequest.t(), opts :: keyword) ::
          {:ok, Adyen.TerminalAPI.V1.DisplayResponse.t()} | :error
  def display_post(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.TerminalAPI.V1.Operations, :display_post},
      url: "/display",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.TerminalAPI.V1.DisplayRequest, :t}}],
      response: [{200, {Adyen.TerminalAPI.V1.DisplayResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  EnableService Request

  It conveys the services that will be enabled for the POI Terminal without the request of the Sale System, and a possible invitation for the Customer to start the services.
  Content of the Enable Service Request message.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec enableservice_post(body :: Adyen.TerminalAPI.V1.EnableServiceRequest.t(), opts :: keyword) ::
          {:ok, Adyen.TerminalAPI.V1.EnableServiceResponse.t()} | :error
  def enableservice_post(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.TerminalAPI.V1.Operations, :enableservice_post},
      url: "/enableservice",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.TerminalAPI.V1.EnableServiceRequest, :t}}],
      response: [{200, {Adyen.TerminalAPI.V1.EnableServiceResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  GetTotals Request

  It conveys information from the Sale System related to the scope and the format of the totals to be computed by the POI System.
  Content of the Get Totals Request message.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec gettotals_post(body :: Adyen.TerminalAPI.V1.GetTotalsRequest.t(), opts :: keyword) ::
          {:ok, Adyen.TerminalAPI.V1.GetTotalsResponse.t()} | :error
  def gettotals_post(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.TerminalAPI.V1.Operations, :gettotals_post},
      url: "/gettotals",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.TerminalAPI.V1.GetTotalsRequest, :t}}],
      response: [{200, {Adyen.TerminalAPI.V1.GetTotalsResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Input Request

  Content of the `InputRequest` message. It conveys the data to display and how to process it. In addition to the display on the Input Device, it might contain an operation (the `DisplayOutput` element) per Display Device type.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec input_post(body :: Adyen.TerminalAPI.V1.InputRequest.t(), opts :: keyword) ::
          {:ok, Adyen.TerminalAPI.V1.InputResponse.t()} | :error
  def input_post(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.TerminalAPI.V1.Operations, :input_post},
      url: "/input",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.TerminalAPI.V1.InputRequest, :t}}],
      response: [{200, {Adyen.TerminalAPI.V1.InputResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Login Request

  It conveys information related to the session (period between a Login and the following Logout) to process.
  Content of the `LoginRequest` message.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec login_post(body :: Adyen.TerminalAPI.V1.LoginRequest.t(), opts :: keyword) ::
          {:ok, Adyen.TerminalAPI.V1.LoginResponse.t()} | :error
  def login_post(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.TerminalAPI.V1.Operations, :login_post},
      url: "/login",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.TerminalAPI.V1.LoginRequest, :t}}],
      response: [{200, {Adyen.TerminalAPI.V1.LoginResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Logout Request

  Empty.
  Content of the Logout Request message.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec logout_post(body :: Adyen.TerminalAPI.V1.LogoutRequest.t(), opts :: keyword) ::
          {:ok, Adyen.TerminalAPI.V1.LogoutResponse.t()} | :error
  def logout_post(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.TerminalAPI.V1.Operations, :logout_post},
      url: "/logout",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.TerminalAPI.V1.LogoutRequest, :t}}],
      response: [{200, {Adyen.TerminalAPI.V1.LogoutResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Payment Request

  Request sent to terminal to initiate payment.
  It conveys Information related to the Payment transaction to process.
  Content of the `PaymentRequest` message.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec payment_post(body :: Adyen.TerminalAPI.V1.PaymentRequest.t(), opts :: keyword) ::
          {:ok, Adyen.TerminalAPI.V1.PaymentResponse.t()} | :error
  def payment_post(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.TerminalAPI.V1.Operations, :payment_post},
      url: "/payment",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.TerminalAPI.V1.PaymentRequest, :t}}],
      response: [{200, {Adyen.TerminalAPI.V1.PaymentResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Print Request

  Content of the Print Request message.
  It conveys the complete data to print and how to process the print.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec print_post(body :: Adyen.TerminalAPI.V1.PrintRequest.t(), opts :: keyword) ::
          {:ok, Adyen.TerminalAPI.V1.PrintResponse.t()} | :error
  def print_post(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.TerminalAPI.V1.Operations, :print_post},
      url: "/print",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.TerminalAPI.V1.PrintRequest, :t}}],
      response: [{200, {Adyen.TerminalAPI.V1.PrintResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Reconciliation Request

  Content of the Reconciliation Request message.
  It conveys Information related to the Reconciliation requested by the Sale System.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec reconciliation_post(
          body :: Adyen.TerminalAPI.V1.ReconciliationRequest.t(),
          opts :: keyword
        ) :: {:ok, Adyen.TerminalAPI.V1.ReconciliationResponse.t()} | :error
  def reconciliation_post(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.TerminalAPI.V1.Operations, :reconciliation_post},
      url: "/reconciliation",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.TerminalAPI.V1.ReconciliationRequest, :t}}],
      response: [{200, {Adyen.TerminalAPI.V1.ReconciliationResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Reversal Request

  It conveys Information related to the reversal of a previous payment or a loyalty transaction.
  Content of the Reversal Request message.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec reversal_post(body :: Adyen.TerminalAPI.V1.ReversalRequest.t(), opts :: keyword) ::
          {:ok, Adyen.TerminalAPI.V1.ReversalResponse.t()} | :error
  def reversal_post(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.TerminalAPI.V1.Operations, :reversal_post},
      url: "/reversal",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.TerminalAPI.V1.ReversalRequest, :t}}],
      response: [{200, {Adyen.TerminalAPI.V1.ReversalResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  StoredValue Request

  It conveys Information related to the Stored Value transaction to process.
  Content of the Stored Value Request message.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec storedvalue_post(body :: Adyen.TerminalAPI.V1.StoredValueRequest.t(), opts :: keyword) ::
          {:ok, Adyen.TerminalAPI.V1.StoredValueResponse.t()} | :error
  def storedvalue_post(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.TerminalAPI.V1.Operations, :storedvalue_post},
      url: "/storedvalue",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.TerminalAPI.V1.StoredValueRequest, :t}}],
      response: [{200, {Adyen.TerminalAPI.V1.StoredValueResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  TransactionStatus Request

  Content of the TransactionStatus Request message.
  It conveys Information requested for status of the last or current Payment, Loyalty or Reversal transaction.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec transactionstatus_post(
          body :: Adyen.TerminalAPI.V1.TransactionStatusRequest.t(),
          opts :: keyword
        ) :: {:ok, Adyen.TerminalAPI.V1.TransactionStatusResponse.t()} | :error
  def transactionstatus_post(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.TerminalAPI.V1.Operations, :transactionstatus_post},
      url: "/transactionstatus",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.TerminalAPI.V1.TransactionStatusRequest, :t}}],
      response: [{200, {Adyen.TerminalAPI.V1.TransactionStatusResponse, :t}}],
      opts: opts
    })
  end
end
