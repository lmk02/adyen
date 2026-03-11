defmodule Adyen.Account.V6.KYCLegalArrangementCheckResult do
  @moduledoc """
  Provides struct and type for a KYCLegalArrangementCheckResult
  """

  @type t :: %__MODULE__{
          checks: [Adyen.Account.V6.KYCCheckStatusData.t()] | nil,
          legalArrangementCode: String.t() | nil
        }

  defstruct [:checks, :legalArrangementCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [checks: [{Adyen.Account.V6.KYCCheckStatusData, :t}], legalArrangementCode: :string]
  end
end
