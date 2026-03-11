defmodule Adyen.Checkout.V51.DragonpayDetails do
  @moduledoc """
  Provides struct and type for a DragonpayDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          issuer: String.t(),
          shopperEmail: String.t() | nil,
          type: String.t()
        }

  defstruct [:checkoutAttemptId, :issuer, :shopperEmail, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checkoutAttemptId: :string,
      issuer: :string,
      shopperEmail: :string,
      type:
        {:enum,
         [
           "dragonpay_ebanking",
           "dragonpay_otc_banking",
           "dragonpay_otc_non_banking",
           "dragonpay_otc_philippines"
         ]}
    ]
  end
end
