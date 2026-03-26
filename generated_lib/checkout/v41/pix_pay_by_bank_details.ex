defmodule Adyen.Checkout.V41.PixPayByBankDetails do
  @moduledoc """
  Provides struct and type for a PixPayByBankDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          deviceId: String.t() | nil,
          issuer: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          riskSignals: Adyen.Checkout.V41.PixPayByBankRiskSignals.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :checkoutAttemptId,
    :deviceId,
    :issuer,
    :recurringDetailReference,
    :riskSignals,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checkoutAttemptId: :string,
      deviceId: :string,
      issuer: :string,
      recurringDetailReference: :string,
      riskSignals: {Adyen.Checkout.V41.PixPayByBankRiskSignals, :t},
      type: {:const, "paybybank_pix"}
    ]
  end
end
