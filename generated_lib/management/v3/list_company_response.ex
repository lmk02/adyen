defmodule Adyen.Management.V3.ListCompanyResponse do
  @moduledoc """
  Provides struct and type for a ListCompanyResponse
  """

  @type t :: %__MODULE__{
          _links: Adyen.Management.V3.PaginationLinks.t() | nil,
          data: [Adyen.Management.V3.Company.t()] | nil,
          itemsTotal: integer,
          pagesTotal: integer
        }

  defstruct [:_links, :data, :itemsTotal, :pagesTotal]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      _links: {Adyen.Management.V3.PaginationLinks, :t},
      data: [{Adyen.Management.V3.Company, :t}],
      itemsTotal: {:integer, "int32"},
      pagesTotal: {:integer, "int32"}
    ]
  end
end
