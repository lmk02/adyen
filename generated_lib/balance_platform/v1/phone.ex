defmodule Adyen.BalancePlatform.V1.Phone do
  @moduledoc """
  Provides struct and type for a Phone
  """

  @type t :: %__MODULE__{number: String.t(), type: String.t()}

  defstruct [:number, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [number: :string, type: {:enum, ["Landline", "Mobile"]}]
  end
end
