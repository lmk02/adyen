defmodule Adyen.BalancePlatform.AssociationFinaliseResponse do
  @moduledoc """
  Provides struct and type for a AssociationFinaliseResponse
  """

  @type t :: %__MODULE__{deviceId: String.t() | nil, ids: [String.t()] | nil, type: String.t()}

  defstruct [:deviceId, :ids, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [deviceId: :string, ids: [:string], type: {:const, "PAYMENT_INSTRUMENT"}]
  end
end
