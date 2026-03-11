defmodule Adyen.Recurring.PermitResult do
  @moduledoc """
  Provides struct and type for a PermitResult
  """

  @type t :: %__MODULE__{resultKey: String.t() | nil, token: String.t() | nil}

  defstruct [:resultKey, :token]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [resultKey: :string, token: :string]
  end
end
