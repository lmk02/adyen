defmodule Adyen.LegalEntity.V4.TermsOfServiceAcceptanceInfo do
  @moduledoc """
  Provides struct and type for a TermsOfServiceAcceptanceInfo
  """

  @type t :: %__MODULE__{
          acceptedBy: String.t() | nil,
          acceptedFor: String.t() | nil,
          createdAt: DateTime.t() | nil,
          id: String.t() | nil,
          type: String.t() | nil,
          validTo: DateTime.t() | nil
        }

  defstruct [:acceptedBy, :acceptedFor, :createdAt, :id, :type, :validTo]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      acceptedBy: :string,
      acceptedFor: :string,
      createdAt: {:string, "date-time"},
      id: :string,
      type:
        {:enum,
         [
           "adyenAccount",
           "adyenCapital",
           "adyenCard",
           "adyenChargeCard",
           "adyenForPlatformsAdvanced",
           "adyenForPlatformsManage",
           "adyenFranchisee",
           "adyenIssuing",
           "adyenPccr",
           "kycOnInvite"
         ]},
      validTo: {:string, "date-time"}
    ]
  end
end
