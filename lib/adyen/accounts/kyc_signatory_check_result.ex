defmodule Adyen.Accounts.KYCSignatoryCheckResult do
  @moduledoc """
  Provides struct and type for a KYCSignatoryCheckResult
  """

  @type t :: %__MODULE__{
          checks: [Adyen.Accounts.KYCCheckStatusData.t()] | nil,
          signatoryCode: String.t() | nil
        }

  defstruct [:checks, :signatoryCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [checks: [{Adyen.Accounts.KYCCheckStatusData, :t}], signatoryCode: :string]
  end
end
