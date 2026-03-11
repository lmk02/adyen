defmodule Adyen.Account.V5.UpdateAccountHolderRequest do
  @moduledoc """
  Provides struct and type for a UpdateAccountHolderRequest
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t(),
          accountHolderDetails: Adyen.Account.V5.AccountHolderDetails.t() | nil,
          description: String.t() | nil,
          legalEntity: String.t() | nil,
          primaryCurrency: String.t() | nil,
          processingTier: integer | nil
        }

  defstruct [
    :accountHolderCode,
    :accountHolderDetails,
    :description,
    :legalEntity,
    :primaryCurrency,
    :processingTier
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderCode: :string,
      accountHolderDetails: {Adyen.Account.V5.AccountHolderDetails, :t},
      description: :string,
      legalEntity: {:enum, ["Business", "Individual", "NonProfit"]},
      primaryCurrency: :string,
      processingTier: {:integer, "int32"}
    ]
  end
end
