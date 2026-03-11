defmodule Adyen.Accounts.GetUploadedDocumentsResponse do
  @moduledoc """
  Provides struct and type for a GetUploadedDocumentsResponse
  """

  @type t :: %__MODULE__{
          documentDetails: [Adyen.Accounts.DocumentDetail.t()] | nil,
          invalidFields: [Adyen.Accounts.ErrorFieldType.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [:documentDetails, :invalidFields, :pspReference, :resultCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      documentDetails: [{Adyen.Accounts.DocumentDetail, :t}],
      invalidFields: [{Adyen.Accounts.ErrorFieldType, :t}],
      pspReference: :string,
      resultCode: :string
    ]
  end
end
