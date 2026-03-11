defmodule Adyen.StoredValue.V46.StoredValueLoadResponse do
  @moduledoc """
  Provides struct and type for a StoredValueLoadResponse
  """

  @type t :: %__MODULE__{
          authCode: String.t() | nil,
          currentBalance: Adyen.StoredValue.V46.Amount.t() | nil,
          pspReference: String.t() | nil,
          refusalReason: String.t() | nil,
          resultCode: String.t() | nil,
          thirdPartyRefusalReason: String.t() | nil
        }

  defstruct [
    :authCode,
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
      authCode: :string,
      currentBalance: {Adyen.StoredValue.V46.Amount, :t},
      pspReference: :string,
      refusalReason: :string,
      resultCode: {:enum, ["Success", "Refused", "Error", "NotEnoughBalance"]},
      thirdPartyRefusalReason: :string
    ]
  end
end
