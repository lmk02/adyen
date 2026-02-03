defmodule Adyen.Transfers.UltimatePartyIdentification do
  @moduledoc """
  Provides struct and type for a UltimatePartyIdentification
  """

  alias Adyen.Transfers.Address
  alias Adyen.Transfers.FundingInstrument

  @type t :: %__MODULE__{
          address: Address.t() | nil,
          dateOfBirth: Date.t() | nil,
          email: String.t() | nil,
          firstName: String.t() | nil,
          fullName: String.t() | nil,
          fundingInstrument: FundingInstrument.t() | nil,
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
      address: {Address, :t},
      dateOfBirth: {:string, "date"},
      email: :string,
      firstName: :string,
      fullName: :string,
      fundingInstrument: {FundingInstrument, :t},
      lastName: :string,
      reference: :string,
      type: {:enum, ["individual", "organization", "unknown"]},
      url: :string
    ]
  end
end
