defmodule Adyen.BalancePlatform.V1.PaymentInstrumentGroup do
  @moduledoc """
  Provides struct and type for a PaymentInstrumentGroup
  """

  @type t :: %__MODULE__{
          balancePlatform: String.t(),
          description: String.t() | nil,
          id: String.t() | nil,
          properties: map | nil,
          reference: String.t() | nil,
          txVariant: String.t()
        }

  defstruct [:balancePlatform, :description, :id, :properties, :reference, :txVariant]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balancePlatform: :string,
      description: :string,
      id: :string,
      properties: :map,
      reference: :string,
      txVariant: :string
    ]
  end
end
