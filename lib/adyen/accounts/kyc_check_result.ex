defmodule Adyen.Accounts.KYCCheckResult do
  @moduledoc """
  Provides struct and type for a KYCCheckResult
  """

  @type t :: %__MODULE__{checks: [Adyen.Accounts.KYCCheckStatusData.t()] | nil}

  defstruct [:checks]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [checks: [{Adyen.Accounts.KYCCheckStatusData, :t}]]
  end
end
