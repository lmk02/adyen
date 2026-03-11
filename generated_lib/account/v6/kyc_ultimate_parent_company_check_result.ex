defmodule Adyen.Account.V6.KYCUltimateParentCompanyCheckResult do
  @moduledoc """
  Provides struct and type for a KYCUltimateParentCompanyCheckResult
  """

  @type t :: %__MODULE__{
          checks: [Adyen.Account.V6.KYCCheckStatusData.t()] | nil,
          ultimateParentCompanyCode: String.t() | nil
        }

  defstruct [:checks, :ultimateParentCompanyCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [checks: [{Adyen.Account.V6.KYCCheckStatusData, :t}], ultimateParentCompanyCode: :string]
  end
end
