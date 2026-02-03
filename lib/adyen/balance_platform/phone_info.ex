defmodule Adyen.BalancePlatform.PhoneInfo do
  @moduledoc """
  Provides struct and type for a PhoneInfo
  """

  @type t :: %__MODULE__{
          hashedNumber: String.t() | nil,
          lastFourDigits: String.t() | nil,
          number: String.t() | nil
        }

  defstruct [:hashedNumber, :lastFourDigits, :number]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [hashedNumber: :string, lastFourDigits: :string, number: :string]
  end
end
