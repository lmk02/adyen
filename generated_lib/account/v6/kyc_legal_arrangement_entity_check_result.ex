defmodule Adyen.Account.V6.KYCLegalArrangementEntityCheckResult do
  @moduledoc """
  Provides struct and type for a KYCLegalArrangementEntityCheckResult
  """

  @type t :: %__MODULE__{
          checks: [Adyen.Account.V6.KYCCheckStatusData.t()] | nil,
          legalArrangementCode: String.t() | nil,
          legalArrangementEntityCode: String.t() | nil
        }

  defstruct [:checks, :legalArrangementCode, :legalArrangementEntityCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checks: [{Adyen.Account.V6.KYCCheckStatusData, :t}],
      legalArrangementCode: :string,
      legalArrangementEntityCode: :string
    ]
  end
end
