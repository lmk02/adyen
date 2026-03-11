defmodule Adyen.BalancePlatform.V2.PaymentInstrumentGroupInfo do
  @moduledoc """
  Provides struct and type for a PaymentInstrumentGroupInfo
  """

  @type t :: %__MODULE__{
          balancePlatform: String.t(),
          description: String.t() | nil,
          properties: map | nil,
          reference: String.t() | nil,
          txVariant: String.t()
        }

  defstruct [:balancePlatform, :description, :properties, :reference, :txVariant]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balancePlatform: :string,
      description: :string,
      properties: :map,
      reference: :string,
      txVariant: :string
    ]
  end
end
