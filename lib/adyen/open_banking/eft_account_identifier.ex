defmodule Adyen.OpenBanking.EFTAccountIdentifier do
  @moduledoc """
  Provides struct and type for a EFTAccountIdentifier
  """

  @type t :: %__MODULE__{accountNumber: String.t(), branch: String.t(), institution: String.t()}

  defstruct [:accountNumber, :branch, :institution]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountNumber: :string, branch: :string, institution: :string]
  end
end
