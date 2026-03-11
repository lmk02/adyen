defmodule Adyen.Account.V5.ViasName do
  @moduledoc """
  Provides struct and type for a ViasName
  """

  @type t :: %__MODULE__{
          firstName: String.t() | nil,
          gender: String.t() | nil,
          infix: String.t() | nil,
          lastName: String.t() | nil
        }

  defstruct [:firstName, :gender, :infix, :lastName]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      firstName: :string,
      gender: {:enum, ["MALE", "FEMALE", "UNKNOWN"]},
      infix: :string,
      lastName: :string
    ]
  end
end
