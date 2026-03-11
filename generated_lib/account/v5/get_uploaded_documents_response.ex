defmodule Adyen.Account.V5.GetUploadedDocumentsResponse do
  @moduledoc """
  Provides struct and type for a GetUploadedDocumentsResponse
  """

  @type t :: %__MODULE__{
          documentDetails: [Adyen.Account.V5.DocumentDetail.t()] | nil,
          invalidFields: [Adyen.Account.V5.ErrorFieldType.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [:documentDetails, :invalidFields, :pspReference, :resultCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      documentDetails: [{Adyen.Account.V5.DocumentDetail, :t}],
      invalidFields: [{Adyen.Account.V5.ErrorFieldType, :t}],
      pspReference: :string,
      resultCode: :string
    ]
  end
end
