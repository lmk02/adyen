defmodule Adyen.Management.V3.SplitConfiguration do
  @moduledoc """
  Provides struct and type for a SplitConfiguration
  """

  @type t :: %__MODULE__{
          description: String.t(),
          rules: [Adyen.Management.V3.SplitConfigurationRule.t()],
          splitConfigurationId: String.t() | nil
        }

  defstruct [:description, :rules, :splitConfigurationId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      description: :string,
      rules: [{Adyen.Management.V3.SplitConfigurationRule, :t}],
      splitConfigurationId: :string
    ]
  end
end
