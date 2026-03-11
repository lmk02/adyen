defmodule Adyen.BalanceControl.V2.BalanceTransferResponse do
  @moduledoc """
  Provides struct and type for a BalanceTransferResponse
  """

  @type t :: %__MODULE__{createdAt: DateTime.t(), pspReference: String.t()}

  defstruct [:createdAt, :pspReference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [createdAt: {:string, "date-time"}, pspReference: :string]
  end
end
