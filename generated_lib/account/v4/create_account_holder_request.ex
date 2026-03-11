defmodule Adyen.Account.V4.CreateAccountHolderRequest do
  @moduledoc """
  Provides struct and type for a CreateAccountHolderRequest
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t(),
          accountHolderDetails: Adyen.Account.V4.AccountHolderDetails.t(),
          createDefaultAccount: boolean | nil,
          description: String.t() | nil,
          legalEntity: String.t(),
          primaryCurrency: String.t() | nil,
          processingTier: integer | nil
        }

  defstruct [
    :accountHolderCode,
    :accountHolderDetails,
    :createDefaultAccount,
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
      accountHolderDetails: {Adyen.Account.V4.AccountHolderDetails, :t},
      createDefaultAccount: :boolean,
      description: :string,
      legalEntity: {:enum, ["Business", "Individual", "NonProfit"]},
      primaryCurrency: :string,
      processingTier: {:integer, "int32"}
    ]
  end
end
