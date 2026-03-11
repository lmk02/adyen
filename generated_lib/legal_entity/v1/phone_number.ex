defmodule Adyen.LegalEntity.V1.PhoneNumber do
  @moduledoc """
  Provides struct and type for a PhoneNumber
  """

  @type t :: %__MODULE__{countryCode: String.t() | nil, number: String.t(), type: String.t()}

  defstruct [:countryCode, :number, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [countryCode: :string, number: :string, type: :string]
  end
end
