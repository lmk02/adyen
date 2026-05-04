defmodule Adyen.BalancePlatform.V2.BankAccountIdentificationTypeRequirement do
  @moduledoc """
  Provides struct and type for a BankAccountIdentificationTypeRequirement
  """

  @type t :: %__MODULE__{
          bankAccountIdentificationTypes: [String.t()] | nil,
          description: String.t() | nil,
          type: String.t()
        }

  defstruct [:bankAccountIdentificationTypes, :description, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bankAccountIdentificationTypes: [
        enum: [
          "auLocal",
          "brLocal",
          "caLocal",
          "czLocal",
          "dkLocal",
          "hkLocal",
          "huLocal",
          "iban",
          "inLocal",
          "jpLocal",
          "legacy",
          "mxLocal",
          "myLocal",
          "noLocal",
          "numberAndBic",
          "nzLocal",
          "plLocal",
          "seLocal",
          "sgLocal",
          "ukLocal",
          "usLocal"
        ]
      ],
      description: :string,
      type: {:const, "bankAccountIdentificationTypeRequirement"}
    ]
  end
end
