defmodule Adyen.Management.V3.ListCompanyUsersResponse do
  @moduledoc """
  Provides struct and type for a ListCompanyUsersResponse
  """

  @type t :: %__MODULE__{
          _links: Adyen.Management.V3.PaginationLinks.t() | nil,
          data: [Adyen.Management.V3.CompanyUser.t()] | nil,
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
      data: [{Adyen.Management.V3.CompanyUser, :t}],
      itemsTotal: {:integer, "int32"},
      pagesTotal: {:integer, "int32"}
    ]
  end
end
