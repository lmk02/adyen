defmodule Adyen.Management.V1.ClearpayInfo do
  @moduledoc """
  Provides struct and type for a ClearpayInfo
  """

  @type t :: %__MODULE__{supportUrl: String.t()}

  defstruct [:supportUrl]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [supportUrl: :string]
  end
end
