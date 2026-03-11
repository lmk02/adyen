defmodule Adyen.Management.PaginationLinks do
  @moduledoc """
  Provides struct and type for a PaginationLinks
  """

  @type t :: %__MODULE__{
          first: Adyen.Management.LinksElement.t(),
          last: Adyen.Management.LinksElement.t(),
          next: Adyen.Management.LinksElement.t() | nil,
          prev: Adyen.Management.LinksElement.t() | nil,
          self: Adyen.Management.LinksElement.t()
        }

  defstruct [:first, :last, :next, :prev, :self]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      first: {Adyen.Management.LinksElement, :t},
      last: {Adyen.Management.LinksElement, :t},
      next: {Adyen.Management.LinksElement, :t},
      prev: {Adyen.Management.LinksElement, :t},
      self: {Adyen.Management.LinksElement, :t}
    ]
  end
end
