defmodule Adyen.BalancePlatform.SubmitScaAssociationRequest do
  @moduledoc """
  Provides struct and type for a SubmitScaAssociationRequest
  """

  alias Adyen.BalancePlatform.ScaEntity

  @type t :: %__MODULE__{entities: [ScaEntity.t()]}

  defstruct [:entities]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [entities: [{ScaEntity, :t}]]
  end
end
