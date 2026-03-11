defmodule Adyen.Management.V1.ListWebhooksResponse do
  @moduledoc """
  Provides struct and type for a ListWebhooksResponse
  """

  @type t :: %__MODULE__{
          _links: Adyen.Management.V1.PaginationLinks.t() | nil,
          accountReference: String.t() | nil,
          data: [Adyen.Management.V1.Webhook.t()] | nil,
          itemsTotal: integer,
          pagesTotal: integer
        }

  defstruct [:_links, :accountReference, :data, :itemsTotal, :pagesTotal]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      _links: {Adyen.Management.V1.PaginationLinks, :t},
      accountReference: :string,
      data: [{Adyen.Management.V1.Webhook, :t}],
      itemsTotal: {:integer, "int32"},
      pagesTotal: {:integer, "int32"}
    ]
  end
end
