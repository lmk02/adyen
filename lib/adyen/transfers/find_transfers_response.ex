defmodule Adyen.Transfers.FindTransfersResponse do
  @moduledoc """
  Provides struct and type for a FindTransfersResponse
  """

  alias Adyen.Transfers.Links
  alias Adyen.Transfers.TransferData

  @type t :: %__MODULE__{
          _links: Links.t() | nil,
          data: [TransferData.t()] | nil
        }

  defstruct [:_links, :data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [_links: {Links, :t}, data: [{TransferData, :t}]]
  end
end
