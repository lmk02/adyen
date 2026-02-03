defmodule Adyen.BalancePlatform.ApproveAssociationResponse do
  @moduledoc """
  Provides struct and type for a ApproveAssociationResponse
  """

  alias Adyen.BalancePlatform.Association

  @type t :: %__MODULE__{scaAssociations: [Association.t()]}

  defstruct [:scaAssociations]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [scaAssociations: [{Association, :t}]]
  end
end
