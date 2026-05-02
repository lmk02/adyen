defmodule Adyen.Management.V3.TicketResponseInfo do
  @moduledoc """
  Provides struct and type for a TicketResponseInfo
  """

  @type t :: %__MODULE__{requestorId: String.t() | nil}

  defstruct [:requestorId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [requestorId: :string]
  end
end
