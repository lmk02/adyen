defmodule Adyen.Funds.DebitAccountHolderResponse do
  @moduledoc """
  Provides struct and type for a DebitAccountHolderResponse
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t() | nil,
          bankAccountUUID: String.t() | nil,
          invalidFields: [Adyen.Funds.ErrorFieldType.t()] | nil,
          merchantReferences: [String.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [
    :accountHolderCode,
    :bankAccountUUID,
    :invalidFields,
    :merchantReferences,
    :pspReference,
    :resultCode
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderCode: :string,
      bankAccountUUID: :string,
      invalidFields: [{Adyen.Funds.ErrorFieldType, :t}],
      merchantReferences: [:string],
      pspReference: :string,
      resultCode: :string
    ]
  end
end
