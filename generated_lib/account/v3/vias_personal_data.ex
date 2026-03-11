defmodule Adyen.Account.V3.ViasPersonalData do
  @moduledoc """
  Provides struct and type for a ViasPersonalData
  """

  @type t :: %__MODULE__{
          dateOfBirth: String.t() | nil,
          documentData: [Adyen.Account.V3.PersonalDocumentDataWrapper.t()] | nil,
          idNumber: String.t() | nil,
          nationality: String.t() | nil
        }

  defstruct [:dateOfBirth, :documentData, :idNumber, :nationality]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      dateOfBirth: :string,
      documentData: [{Adyen.Account.V3.PersonalDocumentDataWrapper, :t}],
      idNumber: :string,
      nationality: :string
    ]
  end
end
