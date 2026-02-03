defmodule Adyen.Transfers.TransactionSearchResponse do
  @moduledoc """
  Provides struct and type for a TransactionSearchResponse
  """

  alias Adyen.Transfers.Links
  alias Adyen.Transfers.Transaction

  @type t :: %__MODULE__{
          _links: Links.t() | nil,
          data: [Transaction.t()] | nil
        }

  defstruct [:_links, :data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [_links: {Links, :t}, data: [{Transaction, :t}]]
  end
end
