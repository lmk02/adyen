defmodule Adyen.Management.V3.ListNonprofitsResponse do
  @moduledoc """
  Provides struct and type for a ListNonprofitsResponse
  """

  @type t :: %__MODULE__{
          _links: Adyen.Management.V3.PaginationLinks.t() | nil,
          itemsTotal: integer,
          nonprofits: [Adyen.Management.V3.Nonprofit.t()] | nil,
          pagesTotal: integer
        }

  defstruct [:_links, :itemsTotal, :nonprofits, :pagesTotal]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      _links: {Adyen.Management.V3.PaginationLinks, :t},
      itemsTotal: {:integer, "int32"},
      nonprofits: [{Adyen.Management.V3.Nonprofit, :t}],
      pagesTotal: {:integer, "int32"}
    ]
  end
end
