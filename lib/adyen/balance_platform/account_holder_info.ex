defmodule Adyen.BalancePlatform.AccountHolderInfo do
  @moduledoc """
  Provides struct and type for a AccountHolderInfo
  """

  @type t :: %__MODULE__{
          balancePlatform: String.t() | nil,
          capabilities: map | nil,
          contactDetails: Adyen.BalancePlatform.ContactDetails.t() | nil,
          description: String.t() | nil,
          legalEntityId: String.t(),
          metadata: map | nil,
          migratedAccountHolderCode: String.t() | nil,
          reference: String.t() | nil,
          timeZone: String.t() | nil
        }

  defstruct [
    :balancePlatform,
    :capabilities,
    :contactDetails,
    :description,
    :legalEntityId,
    :metadata,
    :migratedAccountHolderCode,
    :reference,
    :timeZone
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
      legalEntityId: :string,
      metadata: :map,
      migratedAccountHolderCode: :string,
      reference: :string,
      timeZone: :string
    ]
  end
end
