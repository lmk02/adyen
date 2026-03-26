defmodule Adyen.BalancePlatform.V2.MandatePartyIdentification do
  @moduledoc """
  Provides struct and type for a MandatePartyIdentification
  """

  @type t :: %__MODULE__{fullName: String.t() | nil}

  defstruct [:fullName]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [fullName: :string]
  end
end
