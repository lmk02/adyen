defmodule Adyen.Account.V6.SignatoryContact do
  @moduledoc """
  Provides struct and type for a SignatoryContact
  """

  @type t :: %__MODULE__{
          address: Adyen.Account.V6.ViasAddress.t() | nil,
          email: String.t() | nil,
          fullPhoneNumber: String.t() | nil,
          jobTitle: String.t() | nil,
          name: Adyen.Account.V6.ViasName.t() | nil,
          personalData: Adyen.Account.V6.ViasPersonalData.t() | nil,
          phoneNumber: Adyen.Account.V6.ViasPhoneNumber.t() | nil,
          signatoryCode: String.t() | nil,
          signatoryReference: String.t() | nil,
          webAddress: String.t() | nil
        }

  defstruct [
    :address,
    :email,
    :fullPhoneNumber,
    :jobTitle,
    :name,
    :personalData,
    :phoneNumber,
    :signatoryCode,
    :signatoryReference,
    :webAddress
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {Adyen.Account.V6.ViasAddress, :t},
      email: :string,
      fullPhoneNumber: :string,
      jobTitle: :string,
      name: {Adyen.Account.V6.ViasName, :t},
      personalData: {Adyen.Account.V6.ViasPersonalData, :t},
      phoneNumber: {Adyen.Account.V6.ViasPhoneNumber, :t},
      signatoryCode: :string,
      signatoryReference: :string,
      webAddress: :string
    ]
  end
end
