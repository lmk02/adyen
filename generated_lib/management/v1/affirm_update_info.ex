defmodule Adyen.Management.V1.AffirmUpdateInfo do
  @moduledoc """
  Provides struct and type for a AffirmUpdateInfo
  """

  @type t :: %__MODULE__{pricePlan: String.t() | nil}

  defstruct [:pricePlan]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [pricePlan: :string]
  end
end
