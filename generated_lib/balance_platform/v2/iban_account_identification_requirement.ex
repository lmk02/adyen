defmodule Adyen.BalancePlatform.V2.IbanAccountIdentificationRequirement do
  @moduledoc """
  Provides struct and type for a IbanAccountIdentificationRequirement
  """

  @type t :: %__MODULE__{
          description: String.t() | nil,
          ibanPrefixes: [String.t()] | nil,
          type: String.t()
        }

  defstruct [:description, :ibanPrefixes, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      description: :string,
      ibanPrefixes: [:string],
      type: {:const, "ibanAccountIdentificationRequirement"}
    ]
  end
end
