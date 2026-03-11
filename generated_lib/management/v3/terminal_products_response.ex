defmodule Adyen.Management.V3.TerminalProductsResponse do
  @moduledoc """
  Provides struct and type for a TerminalProductsResponse
  """

  @type t :: %__MODULE__{data: [Adyen.Management.V3.TerminalProduct.t()] | nil}

  defstruct [:data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: [{Adyen.Management.V3.TerminalProduct, :t}]]
  end
end
