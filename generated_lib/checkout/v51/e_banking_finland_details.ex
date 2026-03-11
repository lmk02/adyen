defmodule Adyen.Checkout.V51.EBankingFinlandDetails do
  @moduledoc """
  Provides struct and type for a EBankingFinlandDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          issuer: String.t() | nil,
          type: String.t()
        }

  defstruct [:checkoutAttemptId, :issuer, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [checkoutAttemptId: :string, issuer: :string, type: {:const, "ebanking_FI"}]
  end
end
