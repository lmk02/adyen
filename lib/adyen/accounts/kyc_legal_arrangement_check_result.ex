defmodule Adyen.Accounts.KYCLegalArrangementCheckResult do
  @moduledoc """
  Provides struct and type for a KYCLegalArrangementCheckResult
  """

  @type t :: %__MODULE__{
          checks: [Adyen.Accounts.KYCCheckStatusData.t()] | nil,
          legalArrangementCode: String.t() | nil
        }

  defstruct [:checks, :legalArrangementCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [checks: [{Adyen.Accounts.KYCCheckStatusData, :t}], legalArrangementCode: :string]
  end
end
