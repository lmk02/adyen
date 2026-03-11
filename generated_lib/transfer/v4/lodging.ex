defmodule Adyen.Transfer.V4.Lodging do
  @moduledoc """
  Provides struct and type for a Lodging
  """

  @type t :: %__MODULE__{checkInDate: String.t() | nil, numberOfNights: integer | nil}

  defstruct [:checkInDate, :numberOfNights]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [checkInDate: :string, numberOfNights: {:integer, "int32"}]
  end
end
