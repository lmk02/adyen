defmodule Adyen.Management.V1.Links do
  @moduledoc """
  Provides struct and type for a Links
  """

  @type t :: %__MODULE__{self: Adyen.Management.V1.LinksElement.t()}

  defstruct [:self]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [self: {Adyen.Management.V1.LinksElement, :t}]
  end
end
