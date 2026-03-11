defmodule Adyen.Accounts.KYCUltimateParentCompanyCheckResult do
  @moduledoc """
  Provides struct and type for a KYCUltimateParentCompanyCheckResult
  """

  @type t :: %__MODULE__{
          checks: [Adyen.Accounts.KYCCheckStatusData.t()] | nil,
          ultimateParentCompanyCode: String.t() | nil
        }

  defstruct [:checks, :ultimateParentCompanyCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [checks: [{Adyen.Accounts.KYCCheckStatusData, :t}], ultimateParentCompanyCode: :string]
  end
end
