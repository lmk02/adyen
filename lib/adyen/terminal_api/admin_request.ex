defmodule Adyen.TerminalAPI.AdminRequest do
  @moduledoc """
  Provides struct and type for a AdminRequest
  """

  @type t :: %__MODULE__{ServiceIdentification: String.t() | nil}

  defstruct [:ServiceIdentification]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [ServiceIdentification: :string]
  end
end
