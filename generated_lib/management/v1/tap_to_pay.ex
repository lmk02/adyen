defmodule Adyen.Management.V1.TapToPay do
  @moduledoc """
  Provides struct and type for a TapToPay
  """

  @type t :: %__MODULE__{merchantDisplayName: String.t() | nil}

  defstruct [:merchantDisplayName]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [merchantDisplayName: :string]
  end
end
