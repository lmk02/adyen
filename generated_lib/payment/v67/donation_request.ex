defmodule Adyen.Payment.V67.DonationRequest do
  @moduledoc """
  Provides struct and type for a DonationRequest
  """

  @type t :: %__MODULE__{
          donationAccount: String.t(),
          merchantAccount: String.t(),
          modificationAmount: Adyen.Payment.V67.Amount.t(),
          originalReference: String.t() | nil,
          reference: String.t() | nil
        }

  defstruct [
    :donationAccount,
    :merchantAccount,
    :modificationAmount,
    :originalReference,
    :reference
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      donationAccount: :string,
      merchantAccount: :string,
      modificationAmount: {Adyen.Payment.V67.Amount, :t},
      originalReference: :string,
      reference: :string
    ]
  end
end
