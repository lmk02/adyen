defmodule Adyen.Transfer.V4.PaymentInstrument do
  @moduledoc """
  Provides struct and type for a PaymentInstrument
  """

  @type t :: %__MODULE__{
          description: String.t() | nil,
          id: String.t() | nil,
          reference: String.t() | nil,
          tokenType: String.t() | nil
        }

  defstruct [:description, :id, :reference, :tokenType]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [description: :string, id: :string, reference: :string, tokenType: :string]
  end
end
