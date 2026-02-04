defmodule Adyen.BalancePlatform.AdditionalBankIdentificationRequirement do
  @moduledoc """
  Provides struct and type for a AdditionalBankIdentificationRequirement
  """

  @type t :: %__MODULE__{
          additionalBankIdentificationType: String.t() | nil,
          description: String.t() | nil,
          type: String.t()
        }

  defstruct [:additionalBankIdentificationType, :description, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additionalBankIdentificationType:
        {:enum, ["auBsbCode", "caRoutingNumber", "gbSortCode", "usRoutingNumber"]},
      description: :string,
      type: {:const, "additionalBankIdentificationRequirement"}
    ]
  end
end
