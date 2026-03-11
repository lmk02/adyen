defmodule Adyen.LegalEntity.V3.Name do
  @moduledoc """
  Provides struct and type for a Name
  """

  @type t :: %__MODULE__{firstName: String.t(), infix: String.t() | nil, lastName: String.t()}

  defstruct [:firstName, :infix, :lastName]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [firstName: :string, infix: :string, lastName: :string]
  end
end
