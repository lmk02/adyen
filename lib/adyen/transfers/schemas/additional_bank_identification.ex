defmodule Adyen.Transfers.AdditionalBankIdentification do
  @moduledoc """
  Provides struct and type for a AdditionalBankIdentification
  """

  @type t :: %__MODULE__{code: String.t() | nil, type: String.t() | nil}

  defstruct [:code, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      code: :string,
      type: {:enum, ["auBsbCode", "caRoutingNumber", "gbSortCode", "usRoutingNumber"]}
    ]
  end
end
