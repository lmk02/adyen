defmodule Adyen.Management.V3.AffirmResponseInfo do
  @moduledoc """
  Provides struct and type for a AffirmResponseInfo
  """

  @type t :: %__MODULE__{publicApiKey: String.t() | nil}

  defstruct [:publicApiKey]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [publicApiKey: :string]
  end
end
