defmodule Adyen.Accounts.KYCLegalArrangementEntityCheckResult do
  @moduledoc """
  Provides struct and type for a KYCLegalArrangementEntityCheckResult
  """

  @type t :: %__MODULE__{
          checks: [Adyen.Accounts.KYCCheckStatusData.t()] | nil,
          legalArrangementCode: String.t() | nil,
          legalArrangementEntityCode: String.t() | nil
        }

  defstruct [:checks, :legalArrangementCode, :legalArrangementEntityCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checks: [{Adyen.Accounts.KYCCheckStatusData, :t}],
      legalArrangementCode: :string,
      legalArrangementEntityCode: :string
    ]
  end
end
