defmodule Adyen.StoredValue.StoredValueIssueResponse do
  @moduledoc """
  Provides struct and type for a StoredValueIssueResponse
  """

  @type t :: %__MODULE__{
          authCode: String.t() | nil,
          currentBalance: Adyen.StoredValue.Amount.t() | nil,
          paymentMethod: map | nil,
          pspReference: String.t() | nil,
          refusalReason: String.t() | nil,
          resultCode: String.t() | nil,
          thirdPartyRefusalReason: String.t() | nil
        }

  defstruct [
    :authCode,
    :currentBalance,
    :paymentMethod,
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
      authCode: :string,
      currentBalance: {Adyen.StoredValue.Amount, :t},
      paymentMethod: :map,
      pspReference: :string,
      refusalReason: :string,
      resultCode: {:enum, ["Success", "Refused", "Error", "NotEnoughBalance"]},
      thirdPartyRefusalReason: :string
    ]
  end
end
