defmodule Adyen.Management.V3.ClearpayResponseInfo do
  @moduledoc """
  Provides struct and type for a ClearpayResponseInfo
  """

  @type t :: %__MODULE__{supportUrl: String.t() | nil}

  defstruct [:supportUrl]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [supportUrl: :string]
  end
end
