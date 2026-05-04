defmodule Adyen.Management.V3.SofortResponseInfo do
  @moduledoc """
  Provides struct and type for a SofortResponseInfo
  """

  @type t :: %__MODULE__{currencyCode: String.t(), logo: String.t()}

  defstruct [:currencyCode, :logo]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [currencyCode: :string, logo: :string]
  end
end
