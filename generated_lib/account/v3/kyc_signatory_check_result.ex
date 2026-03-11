defmodule Adyen.Account.V3.KYCSignatoryCheckResult do
  @moduledoc """
  Provides struct and type for a KYCSignatoryCheckResult
  """

  @type t :: %__MODULE__{
          checks: [Adyen.Account.V3.KYCCheckStatusData.t()] | nil,
          signatoryCode: String.t() | nil
        }

  defstruct [:checks, :signatoryCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [checks: [{Adyen.Account.V3.KYCCheckStatusData, :t}], signatoryCode: :string]
  end
end
