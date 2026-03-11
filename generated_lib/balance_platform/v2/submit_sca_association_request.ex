defmodule Adyen.BalancePlatform.V2.SubmitScaAssociationRequest do
  @moduledoc """
  Provides struct and type for a SubmitScaAssociationRequest
  """

  @type t :: %__MODULE__{entities: [Adyen.BalancePlatform.V2.ScaEntity.t()]}

  defstruct [:entities]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [entities: [{Adyen.BalancePlatform.V2.ScaEntity, :t}]]
  end
end
