defmodule Adyen.Account.V5.KYCCardCheckResult do
  @moduledoc """
  Provides struct and type for a KYCCardCheckResult
  """

  @type t :: %__MODULE__{
          checks: [Adyen.Account.V5.KYCCheckStatusData.t()] | nil,
          payoutMethodCode: String.t() | nil
        }

  defstruct [:checks, :payoutMethodCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [checks: [{Adyen.Account.V5.KYCCheckStatusData, :t}], payoutMethodCode: :string]
  end
end
