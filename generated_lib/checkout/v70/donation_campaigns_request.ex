defmodule Adyen.Checkout.V70.DonationCampaignsRequest do
  @moduledoc """
  Provides struct and type for a DonationCampaignsRequest
  """

  @type t :: %__MODULE__{
          currency: String.t(),
          locale: String.t() | nil,
          merchantAccount: String.t(),
          store: String.t() | nil
        }

  defstruct [:currency, :locale, :merchantAccount, :store]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [currency: :string, locale: :string, merchantAccount: :string, store: :string]
  end
end
