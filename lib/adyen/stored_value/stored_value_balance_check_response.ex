defmodule Adyen.StoredValue.StoredValueBalanceCheckResponse do
  @moduledoc """
  Provides struct and type for a StoredValueBalanceCheckResponse
  """

  @type t :: %__MODULE__{
          currentBalance: Adyen.StoredValue.Amount.t() | nil,
          pspReference: String.t() | nil,
          refusalReason: String.t() | nil,
          resultCode: String.t() | nil,
          thirdPartyRefusalReason: String.t() | nil
        }

  defstruct [
    :currentBalance,
    :pspReference,
    :refusalReason,
    :resultCode,
    :thirdPartyRefusalReason
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      currentBalance: {Adyen.StoredValue.Amount, :t},
      pspReference: :string,
      refusalReason: :string,
      resultCode: {:enum, ["Success", "Refused", "Error", "NotEnoughBalance"]},
      thirdPartyRefusalReason: :string
    ]
  end
end
