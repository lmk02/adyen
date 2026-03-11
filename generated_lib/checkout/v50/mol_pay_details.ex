defmodule Adyen.Checkout.V50.MolPayDetails do
  @moduledoc """
  Provides struct and type for a MolPayDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          issuer: String.t(),
          type: String.t()
        }

  defstruct [:checkoutAttemptId, :issuer, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checkoutAttemptId: :string,
      issuer: :string,
      type: {:enum, ["molpay_ebanking_fpx_MY", "molpay_ebanking_TH"]}
    ]
  end
end
