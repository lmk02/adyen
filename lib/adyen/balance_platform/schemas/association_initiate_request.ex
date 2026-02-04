defmodule Adyen.BalancePlatform.AssociationInitiateRequest do
  @moduledoc """
  Provides struct and type for a AssociationInitiateRequest
  """

  @type t :: %__MODULE__{ids: [String.t()], type: String.t()}

  defstruct [:ids, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [ids: [:string], type: {:const, "PaymentInstrument"}]
  end
end
