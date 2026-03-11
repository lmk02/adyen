defmodule Adyen.Management.V3.PaginationLinks do
  @moduledoc """
  Provides struct and type for a PaginationLinks
  """

  @type t :: %__MODULE__{
          first: Adyen.Management.V3.LinksElement.t(),
          last: Adyen.Management.V3.LinksElement.t(),
          next: Adyen.Management.V3.LinksElement.t() | nil,
          prev: Adyen.Management.V3.LinksElement.t() | nil,
          self: Adyen.Management.V3.LinksElement.t()
        }

  defstruct [:first, :last, :next, :prev, :self]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      first: {Adyen.Management.V3.LinksElement, :t},
      last: {Adyen.Management.V3.LinksElement, :t},
      next: {Adyen.Management.V3.LinksElement, :t},
      prev: {Adyen.Management.V3.LinksElement, :t},
      self: {Adyen.Management.V3.LinksElement, :t}
    ]
  end
end
