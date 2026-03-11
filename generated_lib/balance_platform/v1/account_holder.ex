defmodule Adyen.BalancePlatform.V1.AccountHolder do
  @moduledoc """
  Provides struct and type for a AccountHolder
  """

  @type t :: %__MODULE__{
          balancePlatform: String.t() | nil,
          capabilities: map | nil,
          contactDetails: Adyen.BalancePlatform.V1.ContactDetails.t() | nil,
          description: String.t() | nil,
          id: String.t(),
          legalEntityId: String.t(),
          primaryBalanceAccount: String.t() | nil,
          reference: String.t() | nil,
          status: String.t() | nil,
          timeZone: String.t() | nil
        }

  defstruct [
    :balancePlatform,
    :capabilities,
    :contactDetails,
    :description,
    :id,
    :legalEntityId,
    :primaryBalanceAccount,
    :reference,
    :status,
    :timeZone
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balancePlatform: :string,
      capabilities: :map,
      contactDetails: {Adyen.BalancePlatform.V1.ContactDetails, :t},
      description: :string,
      id: :string,
      legalEntityId: :string,
      primaryBalanceAccount: :string,
      reference: :string,
      status: {:enum, ["Active", "Closed", "Inactive", "Suspended"]},
      timeZone: :string
    ]
  end
end
