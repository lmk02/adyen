defmodule Adyen.BinLookup.V53.CostEstimateAssumptions do
  @moduledoc """
  Provides struct and type for a CostEstimateAssumptions
  """

  @type t :: %__MODULE__{
          assume3DSecureAuthenticated: boolean | nil,
          assumeLevel3Data: boolean | nil,
          installments: integer | nil
        }

  defstruct [:assume3DSecureAuthenticated, :assumeLevel3Data, :installments]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      assume3DSecureAuthenticated: :boolean,
      assumeLevel3Data: :boolean,
      installments: {:integer, "int32"}
    ]
  end
end
