defmodule Adyen.BalancePlatform.CardInfo do
  @moduledoc """
  Provides struct and type for a CardInfo
  """

  alias Adyen.BalancePlatform.Authentication
  alias Adyen.BalancePlatform.CardConfiguration
  alias Adyen.BalancePlatform.DeliveryContact

  @type t :: %__MODULE__{
          authentication: Authentication.t() | nil,
          brand: String.t(),
          brandVariant: String.t(),
          cardholderName: String.t(),
          configuration: CardConfiguration.t() | nil,
          deliveryContact: DeliveryContact.t() | nil,
          formFactor: String.t(),
          threeDSecure: String.t() | nil,
          usage: String.t() | nil
        }

  defstruct [
    :authentication,
    :brand,
    :brandVariant,
    :cardholderName,
    :configuration,
    :deliveryContact,
    :formFactor,
    :threeDSecure,
    :usage
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      authentication: {Authentication, :t},
      brand: :string,
      brandVariant: :string,
      cardholderName: :string,
      configuration: {CardConfiguration, :t},
      deliveryContact: {DeliveryContact, :t},
      formFactor: {:enum, ["physical", "unknown", "virtual"]},
      threeDSecure: :string,
      usage: :string
    ]
  end
end
