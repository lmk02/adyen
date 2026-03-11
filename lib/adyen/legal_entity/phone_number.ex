defmodule Adyen.LegalEntity.PhoneNumber do
  @moduledoc """
  Provides struct and type for a PhoneNumber
  """

  @type t :: %__MODULE__{
          number: String.t(),
          phoneCountryCode: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:number, :phoneCountryCode, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [number: :string, phoneCountryCode: :string, type: :string]
  end
end
