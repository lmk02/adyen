defmodule Adyen.Account.V3.UpdateAccountHolderRequest do
  @moduledoc """
  Provides struct and type for a UpdateAccountHolderRequest
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t(),
          accountHolderDetails: Adyen.Account.V3.AccountHolderDetails.t() | nil,
          processingTier: integer | nil
        }

  defstruct [:accountHolderCode, :accountHolderDetails, :processingTier]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderCode: :string,
      accountHolderDetails: {Adyen.Account.V3.AccountHolderDetails, :t},
      processingTier: {:integer, "int32"}
    ]
  end
end
