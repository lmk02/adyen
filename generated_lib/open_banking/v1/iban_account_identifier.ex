defmodule Adyen.OpenBanking.V1.IBANAccountIdentifier do
  @moduledoc """
  Provides struct and type for a IBANAccountIdentifier
  """

  @type t :: %__MODULE__{bban: String.t(), bic: String.t(), iban: String.t()}

  defstruct [:bban, :bic, :iban]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [bban: :string, bic: :string, iban: :string]
  end
end
