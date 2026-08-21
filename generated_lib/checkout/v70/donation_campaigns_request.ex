defmodule Adyen.Checkout.V70.DonationCampaignsRequest do
  @moduledoc """
  Provides struct and type for a DonationCampaignsRequest
  """

  @type t :: %__MODULE__{
          currency: String.t(),
          label: String.t() | nil,
          locale: String.t() | nil,
          merchantAccount: String.t(),
          store: String.t() | nil
        }

  defstruct [:currency, :label, :locale, :merchantAccount, :store]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [currency: :string, label: :string, locale: :string, merchantAccount: :string, store: :string]
  end
end
