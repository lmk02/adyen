defmodule Adyen.BalancePlatform.BalancePlatform do
  @moduledoc """
  Provides struct and type for a BalancePlatform
  """

  @type t :: %__MODULE__{description: String.t() | nil, id: String.t(), status: String.t() | nil}

  defstruct [:description, :id, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [description: :string, id: :string, status: :string]
  end
end
