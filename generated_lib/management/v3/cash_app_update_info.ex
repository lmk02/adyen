defmodule Adyen.Management.V3.CashAppUpdateInfo do
  @moduledoc """
  Provides struct and type for a CashAppUpdateInfo
  """

  @type t :: %__MODULE__{logoUrl: String.t() | nil, merchantName: String.t() | nil}

  defstruct [:logoUrl, :merchantName]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [logoUrl: :string, merchantName: :string]
  end
end
