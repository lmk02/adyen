defmodule Adyen.BalancePlatform.V1.PaymentInstrumentUpdateRequest do
  @moduledoc """
  Provides struct and type for a PaymentInstrumentUpdateRequest
  """

  @type t :: %__MODULE__{
          balanceAccountId: String.t() | nil,
          card: Adyen.BalancePlatform.V1.CardInfo.t() | nil,
          status: String.t() | nil,
          statusComment: String.t() | nil
        }

  defstruct [:balanceAccountId, :card, :status, :statusComment]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balanceAccountId: :string,
      card: {Adyen.BalancePlatform.V1.CardInfo, :t},
      status:
        {:enum,
         [
           "Active",
           "Closed",
           "Inactive",
           "Lost",
           "Requested",
           "Stolen",
           "Suspended",
           "blocked",
           "discarded"
         ]},
      statusComment: :string
    ]
  end
end
