defmodule Adyen.BalancePlatform.ApproveAssociationResponse do
  @moduledoc """
  Provides struct and type for a ApproveAssociationResponse
  """

  @type t :: %__MODULE__{scaAssociations: [Adyen.BalancePlatform.Association.t()]}

  defstruct [:scaAssociations]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [scaAssociations: [{Adyen.BalancePlatform.Association, :t}]]
  end
end
