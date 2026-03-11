defmodule Adyen.Management.V1.Name2 do
  @moduledoc """
  Provides struct and type for a Name2
  """

  @type t :: %__MODULE__{firstName: String.t() | nil, lastName: String.t() | nil}

  defstruct [:firstName, :lastName]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [firstName: :string, lastName: :string]
  end
end
