defmodule Adyen.BalancePlatform.V2.AccountHolder do
  @moduledoc """
  Provides struct and type for a AccountHolder
  """

  @type t :: %__MODULE__{
          balancePlatform: String.t() | nil,
          capabilities: map | nil,
          contactDetails: Adyen.BalancePlatform.V2.ContactDetails.t() | nil,
          description: String.t() | nil,
          id: String.t(),
          legalEntityId: String.t(),
          metadata: map | nil,
          migratedAccountHolderCode: String.t() | nil,
          primaryBalanceAccount: String.t() | nil,
          reference: String.t() | nil,
          status: String.t() | nil,
          timeZone: String.t() | nil,
          verificationDeadlines: [Adyen.BalancePlatform.V2.VerificationDeadline.t()] | nil
        }

  defstruct [
    :balancePlatform,
    :capabilities,
    :contactDetails,
    :description,
    :id,
    :legalEntityId,
    :metadata,
    :migratedAccountHolderCode,
    :primaryBalanceAccount,
    :reference,
    :status,
    :timeZone,
    :verificationDeadlines
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balancePlatform: :string,
      capabilities: :map,
      contactDetails: {Adyen.BalancePlatform.V2.ContactDetails, :t},
      description: :string,
      id: :string,
      legalEntityId: :string,
      metadata: :map,
      migratedAccountHolderCode: :string,
      primaryBalanceAccount: :string,
      reference: :string,
      status: {:enum, ["active", "closed", "suspended"]},
      timeZone: :string,
      verificationDeadlines: [{Adyen.BalancePlatform.V2.VerificationDeadline, :t}]
    ]
  end
end
