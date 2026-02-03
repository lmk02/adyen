defmodule Adyen.BalancePlatform.PaymentInstrumentUpdateRequest do
  @moduledoc """
  Provides struct and type for a PaymentInstrumentUpdateRequest
  """

  alias Adyen.BalancePlatform.CardInfo

  @type t :: %__MODULE__{
          balanceAccountId: String.t() | nil,
          card: CardInfo.t() | nil,
          status: String.t() | nil,
          statusComment: String.t() | nil,
          statusReason: String.t() | nil
        }

  defstruct [:balanceAccountId, :card, :status, :statusComment, :statusReason]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balanceAccountId: :string,
      card: {CardInfo, :t},
      status: {:enum, ["active", "closed", "inactive", "suspended"]},
      statusComment: :string,
      statusReason:
        {:enum,
         [
           "accountClosure",
           "damaged",
           "endOfLife",
           "expired",
           "lost",
           "other",
           "stolen",
           "suspectedFraud",
           "transactionRule"
         ]}
    ]
  end
end
