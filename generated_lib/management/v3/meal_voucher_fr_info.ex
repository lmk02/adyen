defmodule Adyen.Management.V3.MealVoucherFRInfo do
  @moduledoc """
  Provides struct and type for a MealVoucherFRInfo
  """

  @type t :: %__MODULE__{conecsId: String.t(), siret: String.t(), subTypes: [String.t()]}

  defstruct [:conecsId, :siret, :subTypes]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [conecsId: :string, siret: :string, subTypes: [:string]]
  end
end
