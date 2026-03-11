defmodule Adyen.Transfer.V4.TransactionSearchResponse do
  @moduledoc """
  Provides struct and type for a TransactionSearchResponse
  """

  @type t :: %__MODULE__{
          _links: Adyen.Transfer.V4.Links.t() | nil,
          data: [Adyen.Transfer.V4.Transaction.t()] | nil
        }

  defstruct [:_links, :data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [_links: {Adyen.Transfer.V4.Links, :t}, data: [{Adyen.Transfer.V4.Transaction, :t}]]
  end
end
