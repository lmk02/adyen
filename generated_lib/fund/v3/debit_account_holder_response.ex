defmodule Adyen.Fund.V3.DebitAccountHolderResponse do
  @moduledoc """
  Provides struct and type for a DebitAccountHolderResponse
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t() | nil,
          bankAccountUUID: String.t() | nil,
          merchantReferences: [String.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          submittedAsync: boolean | nil
        }

  defstruct [
    :accountHolderCode,
    :bankAccountUUID,
    :merchantReferences,
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
      bankAccountUUID: :string,
      merchantReferences: [:string],
      pspReference: :string,
      resultCode: :string,
      submittedAsync: :boolean
    ]
  end
end
