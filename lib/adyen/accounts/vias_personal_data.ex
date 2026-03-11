defmodule Adyen.Accounts.ViasPersonalData do
  @moduledoc """
  Provides struct and type for a ViasPersonalData
  """

  @type t :: %__MODULE__{
          dateOfBirth: String.t() | nil,
          documentData: [Adyen.Accounts.PersonalDocumentData.t()] | nil,
          nationality: String.t() | nil
        }

  defstruct [:dateOfBirth, :documentData, :nationality]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      dateOfBirth: :string,
      documentData: [{Adyen.Accounts.PersonalDocumentData, :t}],
      nationality: :string
    ]
  end
end
