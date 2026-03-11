defmodule Adyen.Checkout.V70.DokuDetails do
  @moduledoc """
  Provides struct and type for a DokuDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          firstName: String.t(),
          lastName: String.t(),
          sdkData: String.t() | nil,
          shopperEmail: String.t(),
          type: String.t()
        }

  defstruct [:checkoutAttemptId, :firstName, :lastName, :sdkData, :shopperEmail, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checkoutAttemptId: :string,
      firstName: :string,
      lastName: :string,
      sdkData: :string,
      shopperEmail: :string,
      type:
        {:enum,
         [
           "doku_mandiri_va",
           "doku_cimb_va",
           "doku_danamon_va",
           "doku_bni_va",
           "doku_permata_lite_atm",
           "doku_bri_va",
           "doku_bca_va",
           "doku_alfamart",
           "doku_indomaret",
           "doku_wallet",
           "doku_ovo"
         ]}
    ]
  end
end
