defmodule Adyen.BalancePlatform.V1.Individual do
  @moduledoc """
  Provides struct and type for a Individual
  """

  @type t :: %__MODULE__{
          birthData: Adyen.BalancePlatform.V1.BirthData.t() | nil,
          email: String.t() | nil,
          identificationData: Adyen.BalancePlatform.V1.IdentificationData.t() | nil,
          name: Adyen.BalancePlatform.V1.Name3.t(),
          nationality: String.t() | nil,
          phone: Adyen.BalancePlatform.V1.PhoneNumber2.t() | nil,
          residentialAddress: Adyen.BalancePlatform.V1.Address3.t(),
          webData: Adyen.BalancePlatform.V1.WebData.t() | nil
        }

  defstruct [
    :birthData,
    :email,
    :identificationData,
    :name,
    :nationality,
    :phone,
    :residentialAddress,
    :webData
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      birthData: {Adyen.BalancePlatform.V1.BirthData, :t},
      email: :string,
      identificationData: {Adyen.BalancePlatform.V1.IdentificationData, :t},
      name: {Adyen.BalancePlatform.V1.Name3, :t},
      nationality: :string,
      phone: {Adyen.BalancePlatform.V1.PhoneNumber2, :t},
      residentialAddress: {Adyen.BalancePlatform.V1.Address3, :t},
      webData: {Adyen.BalancePlatform.V1.WebData, :t}
    ]
  end
end
