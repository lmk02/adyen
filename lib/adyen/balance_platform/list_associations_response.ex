defmodule Adyen.BalancePlatform.ListAssociationsResponse do
  @moduledoc """
  Provides struct and type for a ListAssociationsResponse
  """

  alias Adyen.BalancePlatform.AssociationListing
  alias Adyen.BalancePlatform.Link

  @type t :: %__MODULE__{
          _links: Link.t(),
          data: [AssociationListing.t()],
          itemsTotal: integer,
          pagesTotal: integer
        }

  defstruct [:_links, :data, :itemsTotal, :pagesTotal]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      _links: {Link, :t},
      data: [{AssociationListing, :t}],
      itemsTotal: {:integer, "int32"},
      pagesTotal: {:integer, "int32"}
    ]
  end
end
