defmodule Adyen.Management.V1.MealVoucherFRResponseInfo do
  @moduledoc """
  Provides struct and type for a MealVoucherFRResponseInfo
  """

  @type t :: %__MODULE__{
          conecsId: String.t() | nil,
          siret: String.t() | nil,
          subTypes: [String.t()] | nil
        }

  defstruct [:conecsId, :siret, :subTypes]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [conecsId: :string, siret: :string, subTypes: [:string]]
  end
end
