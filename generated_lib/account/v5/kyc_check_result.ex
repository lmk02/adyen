defmodule Adyen.Account.V5.KYCCheckResult do
  @moduledoc """
  Provides struct and type for a KYCCheckResult
  """

  @type t :: %__MODULE__{checks: [Adyen.Account.V5.KYCCheckStatusData.t()] | nil}

  defstruct [:checks]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [checks: [{Adyen.Account.V5.KYCCheckStatusData, :t}]]
  end
end
