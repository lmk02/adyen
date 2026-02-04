defmodule Adyen.Transfers.FindTransfersResponse do
  @moduledoc """
  Provides struct and type for a FindTransfersResponse
  """

  @type t :: %__MODULE__{
          _links: Adyen.Transfers.Links.t() | nil,
          data: [Adyen.Transfers.TransferData.t()] | nil
        }

  defstruct [:_links, :data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [_links: {Adyen.Transfers.Links, :t}, data: [{Adyen.Transfers.TransferData, :t}]]
  end
end
