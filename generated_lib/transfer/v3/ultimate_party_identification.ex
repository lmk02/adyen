defmodule Adyen.Transfer.V3.UltimatePartyIdentification do
  @moduledoc """
  Provides struct and type for a UltimatePartyIdentification
  """

  @type t :: %__MODULE__{
          address: Adyen.Transfer.V3.Address.t() | nil,
          dateOfBirth: Date.t() | nil,
          email: String.t() | nil,
          firstName: String.t() | nil,
          fullName: String.t() | nil,
          fundingInstrument: Adyen.Transfer.V3.FundingInstrument.t() | nil,
          lastName: String.t() | nil,
          reference: String.t() | nil,
          type: String.t() | nil,
          url: String.t() | nil
        }

  defstruct [
    :address,
    :dateOfBirth,
    :email,
    :firstName,
    :fullName,
    :fundingInstrument,
    :lastName,
    :reference,
    :type,
    :url
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {Adyen.Transfer.V3.Address, :t},
      dateOfBirth: {:string, "date"},
      email: :string,
      firstName: :string,
      fullName: :string,
      fundingInstrument: {Adyen.Transfer.V3.FundingInstrument, :t},
      lastName: :string,
      reference: :string,
      type: {:enum, ["individual", "organization", "unknown"]},
      url: :string
    ]
  end
end
