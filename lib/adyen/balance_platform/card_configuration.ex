defmodule Adyen.BalancePlatform.CardConfiguration do
  @moduledoc """
  Provides struct and type for a CardConfiguration
  """

  alias Adyen.BalancePlatform.BulkAddress

  @type t :: %__MODULE__{
          activation: String.t() | nil,
          activationUrl: String.t() | nil,
          bulkAddress: BulkAddress.t() | nil,
          cardImageId: String.t() | nil,
          carrier: String.t() | nil,
          carrierImageId: String.t() | nil,
          configurationProfileId: String.t(),
          currency: String.t() | nil,
          envelope: String.t() | nil,
          insert: String.t() | nil,
          language: String.t() | nil,
          logoImageId: String.t() | nil,
          pinMailer: String.t() | nil,
          shipmentMethod: String.t() | nil
        }

  defstruct [
    :activation,
    :activationUrl,
    :bulkAddress,
    :cardImageId,
    :carrier,
    :carrierImageId,
    :configurationProfileId,
    :currency,
    :envelope,
    :insert,
    :language,
    :logoImageId,
    :pinMailer,
    :shipmentMethod
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      activation: :string,
      activationUrl: :string,
      bulkAddress: {BulkAddress, :t},
      cardImageId: :string,
      carrier: :string,
      carrierImageId: :string,
      configurationProfileId: :string,
      currency: :string,
      envelope: :string,
      insert: :string,
      language: :string,
      logoImageId: :string,
      pinMailer: :string,
      shipmentMethod: :string
    ]
  end
end
