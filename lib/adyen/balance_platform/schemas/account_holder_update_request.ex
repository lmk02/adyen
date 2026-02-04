defmodule Adyen.BalancePlatform.AccountHolderUpdateRequest do
  @moduledoc """
  Provides struct and type for a AccountHolderUpdateRequest
  """

  @type t :: %__MODULE__{
          balancePlatform: String.t() | nil,
          capabilities: map | nil,
          contactDetails: Adyen.BalancePlatform.ContactDetails.t() | nil,
          description: String.t() | nil,
          metadata: map | nil,
          migratedAccountHolderCode: String.t() | nil,
          primaryBalanceAccount: String.t() | nil,
          reference: String.t() | nil,
          status: String.t() | nil,
          timeZone: String.t() | nil,
          verificationDeadlines: [Adyen.BalancePlatform.VerificationDeadline.t()] | nil
        }

  defstruct [
    :balancePlatform,
    :capabilities,
    :contactDetails,
    :description,
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
      contactDetails: {Adyen.BalancePlatform.ContactDetails, :t},
      description: :string,
      metadata: :map,
      migratedAccountHolderCode: :string,
      primaryBalanceAccount: :string,
      reference: :string,
      status: {:enum, ["active", "closed", "suspended"]},
      timeZone: :string,
      verificationDeadlines: [{Adyen.BalancePlatform.VerificationDeadline, :t}]
    ]
  end
end
