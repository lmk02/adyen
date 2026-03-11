defmodule Adyen.LegalEntity.VerificationErrors do
  @moduledoc """
  Provides struct and type for a VerificationErrors
  """

  @type t :: %__MODULE__{problems: [Adyen.LegalEntity.CapabilityProblem.t()] | nil}

  defstruct [:problems]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [problems: [{Adyen.LegalEntity.CapabilityProblem, :t}]]
  end
end
