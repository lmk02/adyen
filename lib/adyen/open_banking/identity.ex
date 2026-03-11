defmodule Adyen.OpenBanking.Identity do
  @moduledoc """
  Provides struct and type for a Identity
  """

  @type t :: %__MODULE__{fullLegalName: String.t(), name: String.t()}

  defstruct [:fullLegalName, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [fullLegalName: :string, name: :string]
  end
end
