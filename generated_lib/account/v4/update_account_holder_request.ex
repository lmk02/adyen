defmodule Adyen.Account.V4.UpdateAccountHolderRequest do
  @moduledoc """
  Provides struct and type for a UpdateAccountHolderRequest
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t(),
          accountHolderDetails: Adyen.Account.V4.AccountHolderDetails.t() | nil,
          description: String.t() | nil,
          primaryCurrency: String.t() | nil,
          processingTier: integer | nil
        }

  defstruct [
    :accountHolderCode,
    :accountHolderDetails,
    :description,
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
      description: :string,
      primaryCurrency: :string,
      processingTier: {:integer, "int32"}
    ]
  end
end
