defmodule Adyen.Account.V3.SuspendAccountHolderResponse do
  @moduledoc """
  Provides struct and type for a SuspendAccountHolderResponse
  """

  @type t :: %__MODULE__{
          accountHolderStatus: Adyen.Account.V3.AccountHolderStatus.t() | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          submittedAsync: boolean | nil
        }

  defstruct [:accountHolderStatus, :pspReference, :resultCode, :submittedAsync]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderStatus: {Adyen.Account.V3.AccountHolderStatus, :t},
      pspReference: :string,
      resultCode: :string,
      submittedAsync: :boolean
    ]
  end
end
