defmodule Adyen.LegalEntity.DocumentReference do
  @moduledoc """
  Provides struct and type for a DocumentReference
  """

  @type t :: %__MODULE__{
          active: boolean | nil,
          description: String.t() | nil,
          fileName: String.t() | nil,
          id: String.t() | nil,
          modificationDate: DateTime.t() | nil,
          pages: [Adyen.LegalEntity.DocumentPage.t()] | nil,
          type: String.t() | nil
        }

  defstruct [:active, :description, :fileName, :id, :modificationDate, :pages, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      active: :boolean,
      description: :string,
      fileName: :string,
      id: :string,
      modificationDate: {:string, "date-time"},
      pages: [{Adyen.LegalEntity.DocumentPage, :t}],
      type: :string
    ]
  end
end
