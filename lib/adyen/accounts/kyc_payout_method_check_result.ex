defmodule Adyen.Accounts.KYCPayoutMethodCheckResult do
  @moduledoc """
  Provides struct and type for a KYCPayoutMethodCheckResult
  """

  @type t :: %__MODULE__{
          checks: [Adyen.Accounts.KYCCheckStatusData.t()] | nil,
          payoutMethodCode: String.t() | nil
        }

  defstruct [:checks, :payoutMethodCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [checks: [{Adyen.Accounts.KYCCheckStatusData, :t}], payoutMethodCode: :string]
  end
end
