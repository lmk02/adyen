defmodule Adyen.Transfer.V4.FindTransfersResponse do
  @moduledoc """
  Provides struct and type for a FindTransfersResponse
  """

  @type t :: %__MODULE__{
          _links: Adyen.Transfer.V4.Links.t() | nil,
          data: [Adyen.Transfer.V4.TransferData.t()] | nil
        }

  defstruct [:_links, :data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [_links: {Adyen.Transfer.V4.Links, :t}, data: [{Adyen.Transfer.V4.TransferData, :t}]]
  end
end
