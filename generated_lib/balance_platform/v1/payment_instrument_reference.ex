defmodule Adyen.BalancePlatform.V1.PaymentInstrumentReference do
  @moduledoc """
  Provides struct and type for a PaymentInstrumentReference
  """

  @type t :: %__MODULE__{id: String.t()}

  defstruct [:id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [id: :string]
  end
end
