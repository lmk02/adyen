defmodule Adyen.Account.V6.LegalArrangementEntityDetail do
  @moduledoc """
  Provides struct and type for a LegalArrangementEntityDetail
  """

  @type t :: %__MODULE__{
          address: Adyen.Account.V6.ViasAddress.t() | nil,
          businessDetails: Adyen.Account.V6.BusinessDetails.t() | nil,
          email: String.t() | nil,
          fullPhoneNumber: String.t() | nil,
          individualDetails: Adyen.Account.V6.IndividualDetails.t() | nil,
          legalArrangementEntityCode: String.t() | nil,
          legalArrangementEntityReference: String.t() | nil,
          legalArrangementMembers: [String.t()] | nil,
          legalEntityType: String.t() | nil,
          phoneNumber: Adyen.Account.V6.ViasPhoneNumber.t() | nil,
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
      address: {Adyen.Account.V6.ViasAddress, :t},
      businessDetails: {Adyen.Account.V6.BusinessDetails, :t},
      email: :string,
      fullPhoneNumber: :string,
      individualDetails: {Adyen.Account.V6.IndividualDetails, :t},
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
      phoneNumber: {Adyen.Account.V6.ViasPhoneNumber, :t},
      webAddress: :string
    ]
  end
end
