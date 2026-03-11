defmodule Adyen.LegalEntity.CalculatePciStatusResponse do
  @moduledoc """
  Provides struct and type for a CalculatePciStatusResponse
  """

  @type t :: %__MODULE__{signingRequired: boolean | nil}

  defstruct [:signingRequired]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [signingRequired: :boolean]
  end
end
