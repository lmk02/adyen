defmodule Adyen.LegalEntity.TaxInformation do
  @moduledoc """
  Provides struct and type for a TaxInformation
  """

  @type t :: %__MODULE__{
          country: String.t() | nil,
          number: String.t() | nil,
          numberAbsent: boolean | nil,
          type: String.t() | nil
        }

  defstruct [:country, :number, :numberAbsent, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [country: :string, number: :string, numberAbsent: :boolean, type: :string]
  end
end
