defmodule Adyen.Accounts.LegalArrangementEntityDetail do
  @moduledoc """
  Provides struct and type for a LegalArrangementEntityDetail
  """

  @type t :: %__MODULE__{
          address: Adyen.Accounts.ViasAddress.t() | nil,
          businessDetails: Adyen.Accounts.BusinessDetails.t() | nil,
          email: String.t() | nil,
          fullPhoneNumber: String.t() | nil,
          individualDetails: Adyen.Accounts.IndividualDetails.t() | nil,
          legalArrangementEntityCode: String.t() | nil,
          legalArrangementEntityReference: String.t() | nil,
          legalArrangementMembers: [String.t()] | nil,
          legalEntityType: String.t() | nil,
          phoneNumber: Adyen.Accounts.ViasPhoneNumber.t() | nil,
          webAddress: String.t() | nil
        }

  defstruct [
    :address,
    :businessDetails,
    :email,
    :fullPhoneNumber,
    :individualDetails,
    :legalArrangementEntityCode,
    :legalArrangementEntityReference,
    :legalArrangementMembers,
    :legalEntityType,
    :phoneNumber,
    :webAddress
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {Adyen.Accounts.ViasAddress, :t},
      businessDetails: {Adyen.Accounts.BusinessDetails, :t},
      email: :string,
      fullPhoneNumber: :string,
      individualDetails: {Adyen.Accounts.IndividualDetails, :t},
      legalArrangementEntityCode: :string,
      legalArrangementEntityReference: :string,
      legalArrangementMembers: [
        enum: [
          "Beneficiary",
          "ControllingPerson",
          "Partner",
          "Protector",
          "Settlor",
          "Shareholder",
          "Trustee"
        ]
      ],
      legalEntityType:
        {:enum, ["Business", "Individual", "NonProfit", "Partnership", "PublicCompany"]},
      phoneNumber: {Adyen.Accounts.ViasPhoneNumber, :t},
      webAddress: :string
    ]
  end
end
