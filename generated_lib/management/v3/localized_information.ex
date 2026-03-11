defmodule Adyen.Management.V3.LocalizedInformation do
  @moduledoc """
  Provides struct and type for a LocalizedInformation
  """

  @type t :: %__MODULE__{localShopperStatement: [Adyen.Management.V3.LocalShopperStatement.t()]}

  defstruct [:localShopperStatement]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [localShopperStatement: [{Adyen.Management.V3.LocalShopperStatement, :t}]]
  end
end
