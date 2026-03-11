defmodule Adyen.Account.V5.PersonalDocumentData do
  @moduledoc """
  Provides struct and type for a PersonalDocumentData
  """

  @type t :: %__MODULE__{
          expirationDate: String.t() | nil,
          issuerCountry: String.t() | nil,
          issuerState: String.t() | nil,
          number: String.t() | nil,
          type: String.t()
        }

  defstruct [:expirationDate, :issuerCountry, :issuerState, :number, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      expirationDate: :string,
      issuerCountry: :string,
      issuerState: :string,
      number: :string,
      type: {:enum, ["DRIVINGLICENSE", "ID", "PASSPORT", "SOCIALSECURITY", "VISA"]}
    ]
  end
end
