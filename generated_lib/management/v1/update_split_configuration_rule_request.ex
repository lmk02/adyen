defmodule Adyen.Management.V1.UpdateSplitConfigurationRuleRequest do
  @moduledoc """
  Provides struct and type for a UpdateSplitConfigurationRuleRequest
  """

  @type t :: %__MODULE__{
          currency: String.t(),
          fundingSource: String.t(),
          paymentMethod: String.t(),
          shopperInteraction: String.t()
        }

  defstruct [:currency, :fundingSource, :paymentMethod, :shopperInteraction]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      currency: :string,
      fundingSource: :string,
      paymentMethod: :string,
      shopperInteraction: :string
    ]
  end
end
