defmodule Adyen.BalancePlatform.V1.AccountHolderInfo do
  @moduledoc """
  Provides struct and type for a AccountHolderInfo
  """

  @type t :: %__MODULE__{
          balancePlatform: String.t() | nil,
          capabilities: map | nil,
          contactDetails: Adyen.BalancePlatform.V1.ContactDetails.t() | nil,
          description: String.t() | nil,
          legalEntityId: String.t(),
          reference: String.t() | nil,
          timeZone: String.t() | nil
        }

  defstruct [
    :balancePlatform,
    :capabilities,
    :contactDetails,
    :description,
    :legalEntityId,
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
      contactDetails: {Adyen.BalancePlatform.V1.ContactDetails, :t},
      description: :string,
      legalEntityId: :string,
      reference: :string,
      timeZone: :string
    ]
  end
end
