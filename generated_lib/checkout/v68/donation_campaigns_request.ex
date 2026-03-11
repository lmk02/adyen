defmodule Adyen.Checkout.V68.DonationCampaignsRequest do
  @moduledoc """
  Provides struct and type for a DonationCampaignsRequest
  """

  @type t :: %__MODULE__{
          currency: String.t(),
          locale: String.t() | nil,
          merchantAccount: String.t()
        }

  defstruct [:currency, :locale, :merchantAccount]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [currency: :string, locale: :string, merchantAccount: :string]
  end
end
