defmodule Adyen.Management.LinksElement do
  @moduledoc """
  Provides struct and type for a LinksElement
  """

  @type t :: %__MODULE__{href: String.t() | nil}

  defstruct [:href]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [href: :string]
  end
end
