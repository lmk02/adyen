defmodule Adyen.Checkout.BillDeskDetails do
  @moduledoc """
  Provides struct and type for a BillDeskDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          issuer: String.t(),
          sdkData: String.t() | nil,
          type: String.t()
        }

  defstruct [:checkoutAttemptId, :issuer, :sdkData, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checkoutAttemptId: :string,
      issuer: :string,
      sdkData: :string,
      type: {:enum, ["billdesk_online", "billdesk_wallet"]}
    ]
  end
end
