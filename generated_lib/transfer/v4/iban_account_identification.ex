defmodule Adyen.Transfer.V4.IbanAccountIdentification do
  @moduledoc """
  Provides struct and type for a IbanAccountIdentification
  """

  @type t :: %__MODULE__{bic: String.t() | nil, iban: String.t(), type: String.t()}

  defstruct [:bic, :iban, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [bic: :string, iban: :string, type: {:const, "iban"}]
  end
end
