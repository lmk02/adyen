defmodule Adyen.Transfer.V4.TransferNotificationMerchantData do
  @moduledoc """
  Provides struct and type for a TransferNotificationMerchantData
  """

  @type t :: %__MODULE__{
          acquirerId: String.t() | nil,
          city: String.t() | nil,
          country: String.t() | nil,
          countryCode: String.t() | nil,
          mcc: String.t() | nil,
          merchantId: String.t() | nil,
          name: String.t() | nil,
          postalCode: String.t() | nil
        }

  defstruct [:acquirerId, :city, :country, :countryCode, :mcc, :merchantId, :name, :postalCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      acquirerId: :string,
      city: :string,
      country: :string,
      countryCode: :string,
      mcc: :string,
      merchantId: :string,
      name: :string,
      postalCode: :string
    ]
  end
end
