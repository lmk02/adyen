defmodule Adyen.Fund.V5.TransferFundsRequest do
  @moduledoc """
  Provides struct and type for a TransferFundsRequest
  """

  @type t :: %__MODULE__{
          amount: Adyen.Fund.V5.Amount.t(),
          destinationAccountCode: String.t(),
          merchantReference: String.t() | nil,
          sourceAccountCode: String.t(),
          transferCode: String.t()
        }

  defstruct [
    :amount,
    :destinationAccountCode,
    :merchantReference,
    :sourceAccountCode,
    :transferCode
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.Fund.V5.Amount, :t},
      destinationAccountCode: :string,
      merchantReference: :string,
      sourceAccountCode: :string,
      transferCode: :string
    ]
  end
end
