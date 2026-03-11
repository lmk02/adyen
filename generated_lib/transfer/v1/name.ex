defmodule Adyen.Transfer.V1.Name do
  @moduledoc """
  Provides struct and type for a Name
  """

  @type t :: %__MODULE__{
          firstName: String.t() | nil,
          fullName: String.t() | nil,
          infix: String.t() | nil,
          lastName: String.t() | nil
        }

  defstruct [:firstName, :fullName, :infix, :lastName]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [firstName: :string, fullName: :string, infix: :string, lastName: :string]
  end
end
