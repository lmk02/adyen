defmodule Adyen.Checkout.V71.Agency do
  @moduledoc """
  Provides struct and type for a Agency
  """

  @type t :: %__MODULE__{invoiceNumber: String.t() | nil, planName: String.t() | nil}

  defstruct [:invoiceNumber, :planName]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [invoiceNumber: :string, planName: :string]
  end
end
