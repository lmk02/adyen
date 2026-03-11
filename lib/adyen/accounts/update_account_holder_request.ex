defmodule Adyen.Accounts.UpdateAccountHolderRequest do
  @moduledoc """
  Provides struct and type for a UpdateAccountHolderRequest
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t(),
          accountHolderDetails: Adyen.Accounts.AccountHolderDetails.t() | nil,
          description: String.t() | nil,
          legalEntity: String.t() | nil,
          primaryCurrency: String.t() | nil,
          processingTier: integer | nil,
          verificationProfile: String.t() | nil
        }

  defstruct [
    :accountHolderCode,
    :accountHolderDetails,
    :description,
    :legalEntity,
    :primaryCurrency,
    :processingTier,
    :verificationProfile
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderCode: :string,
      accountHolderDetails: {Adyen.Accounts.AccountHolderDetails, :t},
      description: :string,
      legalEntity:
        {:enum, ["Business", "Individual", "NonProfit", "Partnership", "PublicCompany"]},
      primaryCurrency: :string,
      processingTier: {:integer, "int32"},
      verificationProfile: :string
    ]
  end
end
