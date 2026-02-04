defmodule Adyen.Transfers.UKLocalAccountIdentification do
  @moduledoc """
  Provides struct and type for a UKLocalAccountIdentification
  """

  @type t :: %__MODULE__{accountNumber: String.t(), sortCode: String.t(), type: String.t()}

  defstruct [:accountNumber, :sortCode, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountNumber: :string, sortCode: :string, type: {:const, "ukLocal"}]
  end
end
