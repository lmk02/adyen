defmodule Adyen.TerminalAPI.PaymentToken do
  @moduledoc """
  Provides struct and type for a PaymentToken
  """

  @type t :: %__MODULE__{
          ExpiryDateTime: DateTime.t() | nil,
          TokenRequestedType: String.t(),
          TokenValue: String.t()
        }

  defstruct [:ExpiryDateTime, :TokenRequestedType, :TokenValue]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      ExpiryDateTime: {:string, "date-time"},
      TokenRequestedType: {:enum, ["Customer", "Transaction"]},
      TokenValue: :string
    ]
  end
end
