defmodule Adyen.BalancePlatform.AddressRequirement do
  @moduledoc """
  Provides struct and type for a AddressRequirement
  """

  @type t :: %__MODULE__{
          description: String.t() | nil,
          requiredAddressFields: [String.t()] | nil,
          type: String.t()
        }

  defstruct [:description, :requiredAddressFields, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      description: :string,
      requiredAddressFields: [enum: ["city", "country", "line1", "postalCode", "stateOrProvince"]],
      type: {:const, "addressRequirement"}
    ]
  end
end
