defmodule Adyen.Fund.V5.RefundNotPaidOutTransfersRequest do
  @moduledoc """
  Provides struct and type for a RefundNotPaidOutTransfersRequest
  """

  @type t :: %__MODULE__{accountCode: String.t(), accountHolderCode: String.t()}

  defstruct [:accountCode, :accountHolderCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountCode: :string, accountHolderCode: :string]
  end
end
