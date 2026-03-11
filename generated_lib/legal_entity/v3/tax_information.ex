defmodule Adyen.LegalEntity.V3.TaxInformation do
  @moduledoc """
  Provides struct and type for a TaxInformation
  """

  @type t :: %__MODULE__{
          country: String.t() | nil,
          number: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:country, :number, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [country: :string, number: :string, type: :string]
  end
end
