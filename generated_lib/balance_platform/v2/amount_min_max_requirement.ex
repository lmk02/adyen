defmodule Adyen.BalancePlatform.V2.AmountMinMaxRequirement do
  @moduledoc """
  Provides struct and type for a AmountMinMaxRequirement
  """

  @type t :: %__MODULE__{
          description: String.t() | nil,
          max: integer | nil,
          min: integer | nil,
          type: String.t()
        }

  defstruct [:description, :max, :min, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      description: :string,
      max: {:integer, "int64"},
      min: {:integer, "int64"},
      type: {:const, "amountMinMaxRequirement"}
    ]
  end
end
