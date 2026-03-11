defmodule Adyen.Accounts.MigratedShareholders do
  @moduledoc """
  Provides struct and type for a MigratedShareholders
  """

  @type t :: %__MODULE__{legalEntityCode: String.t() | nil, shareholderCode: String.t() | nil}

  defstruct [:legalEntityCode, :shareholderCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [legalEntityCode: :string, shareholderCode: :string]
  end
end
