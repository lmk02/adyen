defmodule Adyen.Transfer.V3.ReturnTransferResponse do
  @moduledoc """
  Provides struct and type for a ReturnTransferResponse
  """

  @type t :: %__MODULE__{
          id: String.t() | nil,
          reference: String.t() | nil,
          status: String.t() | nil,
          transferId: String.t() | nil
        }

  defstruct [:id, :reference, :status, :transferId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      reference: :string,
      status: {:enum, ["Authorised", "Declined"]},
      transferId: :string
    ]
  end
end
