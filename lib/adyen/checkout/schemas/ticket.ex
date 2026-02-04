defmodule Adyen.Checkout.Ticket do
  @moduledoc """
  Provides struct and type for a Ticket
  """

  @type t :: %__MODULE__{
          issueAddress: String.t() | nil,
          issueDate: Date.t() | nil,
          number: String.t() | nil
        }

  defstruct [:issueAddress, :issueDate, :number]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [issueAddress: :string, issueDate: {:string, "date"}, number: :string]
  end
end
