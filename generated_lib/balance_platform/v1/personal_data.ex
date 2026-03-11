defmodule Adyen.BalancePlatform.V1.PersonalData do
  @moduledoc """
  Provides struct and type for a PersonalData
  """

  @type t :: %__MODULE__{
          dateOfBirth: String.t() | nil,
          idNumber: String.t() | nil,
          nationality: String.t() | nil
        }

  defstruct [:dateOfBirth, :idNumber, :nationality]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [dateOfBirth: :string, idNumber: :string, nationality: :string]
  end
end
