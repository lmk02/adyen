defmodule Adyen.Account.V6.KYCCheckSummary do
  @moduledoc """
  Provides struct and type for a KYCCheckSummary
  """

  @type t :: %__MODULE__{kycCheckCode: integer | nil, kycCheckDescription: String.t() | nil}

  defstruct [:kycCheckCode, :kycCheckDescription]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [kycCheckCode: {:integer, "int32"}, kycCheckDescription: :string]
  end
end
