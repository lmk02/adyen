defmodule Adyen.BalancePlatform.GetTaxFormResponse do
  @moduledoc """
  Provides struct and type for a GetTaxFormResponse
  """

  @type t :: %__MODULE__{content: String.t(), contentType: String.t() | nil}

  defstruct [:content, :contentType]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [content: {:string, "byte"}, contentType: {:const, "application/pdf"}]
  end
end
