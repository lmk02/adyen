defmodule Adyen.Account.V4.ShareholderContact do
  @moduledoc """
  Provides struct and type for a ShareholderContact
  """

  @type t :: %__MODULE__{
          address: Adyen.Account.V4.ViasAddress.t() | nil,
          email: String.t() | nil,
          fullPhoneNumber: String.t() | nil,
          jobTitle: String.t() | nil,
          name: Adyen.Account.V4.ViasName.t() | nil,
          personalData: Adyen.Account.V4.ViasPersonalData.t() | nil,
          phoneNumber: Adyen.Account.V4.ViasPhoneNumber.t() | nil,
          shareholderCode: String.t() | nil,
          shareholderType: String.t() | nil,
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
    :shareholderCode,
    :shareholderType,
    :webAddress
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {Adyen.Account.V4.ViasAddress, :t},
      email: :string,
      fullPhoneNumber: :string,
      jobTitle: :string,
      name: {Adyen.Account.V4.ViasName, :t},
      personalData: {Adyen.Account.V4.ViasPersonalData, :t},
      phoneNumber: {Adyen.Account.V4.ViasPhoneNumber, :t},
      shareholderCode: :string,
      shareholderType: {:enum, ["Controller", "Owner", "Signatory"]},
      webAddress: :string
    ]
  end
end
