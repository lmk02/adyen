defmodule Adyen.Payment.V68.DonationRequest do
  @moduledoc """
  Provides struct and type for a DonationRequest
  """

  @type t :: %__MODULE__{
          donationAccount: String.t(),
          merchantAccount: String.t(),
          modificationAmount: Adyen.Payment.V68.Amount.t(),
          originalReference: String.t() | nil,
          platformChargebackLogic: Adyen.Payment.V68.PlatformChargebackLogic.t() | nil,
          reference: String.t() | nil
        }

  defstruct [
    :donationAccount,
    :merchantAccount,
    :modificationAmount,
    :originalReference,
    :platformChargebackLogic,
    :reference
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      donationAccount: :string,
      merchantAccount: :string,
      modificationAmount: {Adyen.Payment.V68.Amount, :t},
      originalReference: :string,
      platformChargebackLogic: {Adyen.Payment.V68.PlatformChargebackLogic, :t},
      reference: :string
    ]
  end
end
