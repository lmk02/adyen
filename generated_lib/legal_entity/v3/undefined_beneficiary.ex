defmodule Adyen.LegalEntity.V3.UndefinedBeneficiary do
  @moduledoc """
  Provides struct and type for a UndefinedBeneficiary
  """

  @type t :: %__MODULE__{description: String.t() | nil, reference: String.t() | nil}

  defstruct [:description, :reference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [description: :string, reference: :string]
  end
end
