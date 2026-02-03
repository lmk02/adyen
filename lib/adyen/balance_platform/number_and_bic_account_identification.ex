defmodule Adyen.BalancePlatform.NumberAndBicAccountIdentification do
  @moduledoc """
  Provides struct and type for a NumberAndBicAccountIdentification
  """

  alias Adyen.BalancePlatform.AdditionalBankIdentification

  @type t :: %__MODULE__{
          accountNumber: String.t(),
          additionalBankIdentification: AdditionalBankIdentification.t() | nil,
          bic: String.t(),
          type: String.t()
        }

  defstruct [:accountNumber, :additionalBankIdentification, :bic, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountNumber: :string,
      additionalBankIdentification: {AdditionalBankIdentification, :t},
      bic: :string,
      type: {:const, "numberAndBic"}
    ]
  end
end
