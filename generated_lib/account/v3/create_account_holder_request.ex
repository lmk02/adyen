defmodule Adyen.Account.V3.CreateAccountHolderRequest do
  @moduledoc """
  Provides struct and type for a CreateAccountHolderRequest
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t(),
          accountHolderDetails: Adyen.Account.V3.AccountHolderDetails.t(),
          createDefaultAccount: boolean | nil,
          legalEntity: String.t(),
          processingTier: integer | nil
        }

  defstruct [
    :accountHolderCode,
    :accountHolderDetails,
    :createDefaultAccount,
    :legalEntity,
    :processingTier
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderCode: :string,
      accountHolderDetails: {Adyen.Account.V3.AccountHolderDetails, :t},
      createDefaultAccount: :boolean,
      legalEntity: {:enum, ["Business", "Individual", "NonProfit"]},
      processingTier: {:integer, "int32"}
    ]
  end
end
