defmodule Adyen.Checkout.V37.BacsDirectDebitDetails do
  @moduledoc """
  Provides struct and type for a BacsDirectDebitDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          transferInstrumentId: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:checkoutAttemptId, :recurringDetailReference, :transferInstrumentId, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checkoutAttemptId: :string,
      recurringDetailReference: :string,
      transferInstrumentId: :string,
      type: {:const, "directdebit_GB"}
    ]
  end
end
