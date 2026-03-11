defmodule Adyen.LegalEntity.V4.BirthData do
  @moduledoc """
  Provides struct and type for a BirthData
  """

  @type t :: %__MODULE__{dateOfBirth: String.t() | nil}

  defstruct [:dateOfBirth]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [dateOfBirth: :string]
  end
end
