defmodule Adyen.BalancePlatform.V1.PhoneNumber2 do
  @moduledoc """
  Provides struct and type for a PhoneNumber2
  """

  @type t :: %__MODULE__{countryCode: String.t() | nil, number: String.t(), type: String.t()}

  defstruct [:countryCode, :number, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [countryCode: :string, number: :string, type: :string]
  end
end
