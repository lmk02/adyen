defmodule Adyen.Transfer.V3.CashOut do
  @moduledoc """
  Provides API endpoint related to cash out
  """

  @default_client Adyen.Client

  @doc """
  Initiate a cashout

  Initiates a cashout request

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_cashouts(body :: Adyen.Transfer.V3.CashOutInfo.t(), opts :: keyword) ::
          {:ok, Adyen.Transfer.V3.CashOut.t()}
          | {:error, Adyen.Transfer.V3.DefaultErrorResponseEntity.t()}
  def post_cashouts(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {Adyen.Transfer.V3.CashOut, :post_cashouts},
      url: "/cashouts",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Transfer.V3.CashOutInfo, :t}}],
      response: [
        {200, {Adyen.Transfer.V3.CashOut, :t}},
        {400, {Adyen.Transfer.V3.DefaultErrorResponseEntity, :t}},
        {401, {Adyen.Transfer.V3.DefaultErrorResponseEntity, :t}},
        {403, {Adyen.Transfer.V3.DefaultErrorResponseEntity, :t}},
        {404, {Adyen.Transfer.V3.DefaultErrorResponseEntity, :t}},
        {422, {Adyen.Transfer.V3.DefaultErrorResponseEntity, :t}},
        {429, {Adyen.Transfer.V3.DefaultErrorResponseEntity, :t}},
        {500, {Adyen.Transfer.V3.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @type t :: %__MODULE__{
          amount: Adyen.Transfer.V3.Amount.t(),
          counterparty: Adyen.Transfer.V3.CashOutInfoCounterparty.t() | nil,
          creationDate: DateTime.t() | nil,
          description: String.t() | nil,
          fee: Adyen.Transfer.V3.Fee.t() | nil,
          id: String.t(),
          instructingBalanceAccountId: String.t(),
          referenceForBeneficiary: String.t() | nil,
          transferInstrumentId: String.t() | nil,
          transfers: [Adyen.Transfer.V3.CashOutTransfer.t()]
        }

  defstruct [
    :amount,
    :counterparty,
    :creationDate,
    :description,
    :fee,
    :id,
    :instructingBalanceAccountId,
    :referenceForBeneficiary,
    :transferInstrumentId,
    :transfers
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.Transfer.V3.Amount, :t},
      counterparty: {Adyen.Transfer.V3.CashOutInfoCounterparty, :t},
      creationDate: {:string, "date-time"},
      description: :string,
      fee: {Adyen.Transfer.V3.Fee, :t},
      id: :string,
      instructingBalanceAccountId: :string,
      referenceForBeneficiary: :string,
      transferInstrumentId: :string,
      transfers: [{Adyen.Transfer.V3.CashOutTransfer, :t}]
    ]
  end
end
