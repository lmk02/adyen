defmodule Adyen.Account.V3.GetUploadedDocumentsResponse do
  @moduledoc """
  Provides struct and type for a GetUploadedDocumentsResponse
  """

  @type t :: %__MODULE__{
          documentDetails: [Adyen.Account.V3.DocumentDetailWrapper.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          submittedAsync: boolean | nil
        }

  defstruct [:documentDetails, :pspReference, :resultCode, :submittedAsync]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      documentDetails: [{Adyen.Account.V3.DocumentDetailWrapper, :t}],
      pspReference: :string,
      resultCode: :string,
      submittedAsync: :boolean
    ]
  end
end
