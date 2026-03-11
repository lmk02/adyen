defmodule Adyen.Account.V3.GetAccountHolderStatusResponse do
  @moduledoc """
  Provides struct and type for a GetAccountHolderStatusResponse
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t() | nil,
          accountHolderStatus: Adyen.Account.V3.AccountHolderStatus.t() | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          submittedAsync: boolean | nil
        }

  defstruct [
    :accountHolderCode,
    :accountHolderStatus,
    :pspReference,
    :resultCode,
    :submittedAsync
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderCode: :string,
      accountHolderStatus: {Adyen.Account.V3.AccountHolderStatus, :t},
      pspReference: :string,
      resultCode: :string,
      submittedAsync: :boolean
    ]
  end
end
