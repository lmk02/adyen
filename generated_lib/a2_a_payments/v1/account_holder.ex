defmodule Adyen.A2APayments.V1.AccountHolder do
  @moduledoc """
  Provides struct and type for a AccountHolder
  """

  @type t :: %__MODULE__{fullName: String.t()}

  defstruct [:fullName]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [fullName: :string]
  end
end
