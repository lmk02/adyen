defmodule Adyen.Account.V6.GetUploadedDocumentsRequest do
  @moduledoc """
  Provides struct and type for a GetUploadedDocumentsRequest
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t(),
          bankAccountUUID: String.t() | nil,
          shareholderCode: String.t() | nil
        }

  defstruct [:accountHolderCode, :bankAccountUUID, :shareholderCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountHolderCode: :string, bankAccountUUID: :string, shareholderCode: :string]
  end
end
