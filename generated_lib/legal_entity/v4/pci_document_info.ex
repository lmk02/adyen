defmodule Adyen.LegalEntity.V4.PciDocumentInfo do
  @moduledoc """
  Provides struct and type for a PciDocumentInfo
  """

  @type t :: %__MODULE__{
          createdAt: DateTime.t() | nil,
          id: String.t() | nil,
          validUntil: DateTime.t() | nil
        }

  defstruct [:createdAt, :id, :validUntil]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [createdAt: {:string, "date-time"}, id: :string, validUntil: {:string, "date-time"}]
  end
end
