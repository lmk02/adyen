defmodule Adyen.BalancePlatform.V2.Mandate do
  @moduledoc """
  Provides struct and type for a Mandate
  """

  @type t :: %__MODULE__{
          balanceAccountId: String.t() | nil,
          counterparty: Adyen.BalancePlatform.V2.MandateBankAccount.t() | nil,
          createdAt: DateTime.t() | nil,
          id: String.t() | nil,
          paymentInstrumentId: String.t() | nil,
          status: String.t() | nil,
          type: String.t() | nil,
          updatedAt: DateTime.t() | nil
        }

  defstruct [
    :balanceAccountId,
    :counterparty,
    :createdAt,
    :id,
    :paymentInstrumentId,
    :status,
    :type,
    :updatedAt
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balanceAccountId: :string,
      counterparty: {Adyen.BalancePlatform.V2.MandateBankAccount, :t},
      createdAt: {:string, "date-time"},
      id: :string,
      paymentInstrumentId: :string,
      status: {:enum, ["pending", "approved", "cancelled"]},
      type: {:const, "bacs"},
      updatedAt: {:string, "date-time"}
    ]
  end
end
