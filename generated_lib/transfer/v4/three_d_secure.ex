defmodule Adyen.Transfer.V4.ThreeDSecure do
  @moduledoc """
  Provides struct and type for a ThreeDSecure
  """

  @type t :: %__MODULE__{acsTransactionId: String.t() | nil}

  defstruct [:acsTransactionId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [acsTransactionId: :string]
  end
end
