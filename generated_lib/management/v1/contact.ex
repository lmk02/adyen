defmodule Adyen.Management.V1.Contact do
  @moduledoc """
  Provides struct and type for a Contact
  """

  @type t :: %__MODULE__{
          email: String.t() | nil,
          firstName: String.t() | nil,
          infix: String.t() | nil,
          lastName: String.t() | nil,
          phoneNumber: String.t() | nil
        }

  defstruct [:email, :firstName, :infix, :lastName, :phoneNumber]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [email: :string, firstName: :string, infix: :string, lastName: :string, phoneNumber: :string]
  end
end
