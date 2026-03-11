defmodule Adyen.Management.ListCompanyUsersResponse do
  @moduledoc """
  Provides struct and type for a ListCompanyUsersResponse
  """

  @type t :: %__MODULE__{
          _links: Adyen.Management.PaginationLinks.t() | nil,
          data: [Adyen.Management.CompanyUser.t()] | nil,
          itemsTotal: integer,
          pagesTotal: integer
        }

  defstruct [:_links, :data, :itemsTotal, :pagesTotal]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      _links: {Adyen.Management.PaginationLinks, :t},
      data: [{Adyen.Management.CompanyUser, :t}],
      itemsTotal: {:integer, "int32"},
      pagesTotal: {:integer, "int32"}
    ]
  end
end
