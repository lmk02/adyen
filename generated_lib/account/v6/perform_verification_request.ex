defmodule Adyen.Account.V6.PerformVerificationRequest do
  @moduledoc """
  Provides struct and type for a PerformVerificationRequest
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t(),
          accountStateType: String.t(),
          tier: integer
        }

  defstruct [:accountHolderCode, :accountStateType, :tier]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderCode: :string,
      accountStateType:
        {:enum,
         [
           "LimitedPayout",
           "LimitedProcessing",
           "LimitlessPayout",
           "LimitlessProcessing",
           "Payout",
           "Processing"
         ]},
      tier: {:integer, "int32"}
    ]
  end
end
