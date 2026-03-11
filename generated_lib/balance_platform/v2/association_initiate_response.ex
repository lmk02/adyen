defmodule Adyen.BalancePlatform.V2.AssociationInitiateResponse do
  @moduledoc """
  Provides struct and type for a AssociationInitiateResponse
  """

  @type t :: %__MODULE__{sdkInput: String.t() | nil}

  defstruct [:sdkInput]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [sdkInput: :string]
  end
end
