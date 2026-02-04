defmodule Adyen.BalancePlatform.ProcessingTypesRestriction do
  @moduledoc """
  Provides struct and type for a ProcessingTypesRestriction
  """

  @type t :: %__MODULE__{operation: String.t(), value: [String.t()] | nil}

  defstruct [:operation, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      operation: :string,
      value: [
        enum: [
          "atmWithdraw",
          "balanceInquiry",
          "ecommerce",
          "moto",
          "pos",
          "recurring",
          "token",
          "unknown"
        ]
      ]
    ]
  end
end
