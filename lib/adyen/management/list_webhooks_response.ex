defmodule Adyen.Management.ListWebhooksResponse do
  @moduledoc """
  Provides struct and type for a ListWebhooksResponse
  """

  @type t :: %__MODULE__{
          _links: Adyen.Management.PaginationLinks.t() | nil,
          accountReference: String.t() | nil,
          data: [Adyen.Management.Webhook.t()] | nil,
          itemsTotal: integer,
          pagesTotal: integer
        }

  defstruct [:_links, :accountReference, :data, :itemsTotal, :pagesTotal]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      _links: {Adyen.Management.PaginationLinks, :t},
      accountReference: :string,
      data: [{Adyen.Management.Webhook, :t}],
      itemsTotal: {:integer, "int32"},
      pagesTotal: {:integer, "int32"}
    ]
  end
end
