defmodule Adyen.Transfer.V3.IbanAccountIdentification do
  @moduledoc """
  Provides struct and type for a IbanAccountIdentification
  """

  @type t :: %__MODULE__{iban: String.t(), type: String.t()}

  defstruct [:iban, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [iban: :string, type: {:const, "iban"}]
  end
end
