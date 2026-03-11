defmodule Adyen.LegalEntity.V2.DocumentPage do
  @moduledoc """
  Provides struct and type for a DocumentPage
  """

  @type t :: %__MODULE__{
          pageName: String.t() | nil,
          pageNumber: integer | nil,
          type: String.t() | nil
        }

  defstruct [:pageName, :pageNumber, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      pageName: :string,
      pageNumber: {:integer, "int32"},
      type: {:enum, ["BACK", "FRONT", "UNDEFINED"]}
    ]
  end
end
