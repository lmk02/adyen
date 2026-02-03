defmodule Adyen.Transfers.CapitalGrants do
  @moduledoc """
  Provides struct and type for a CapitalGrants
  """

  alias Adyen.Transfers.CapitalGrant

  @type t :: %__MODULE__{grants: [CapitalGrant.t()]}

  defstruct [:grants]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [grants: [{CapitalGrant, :t}]]
  end
end
