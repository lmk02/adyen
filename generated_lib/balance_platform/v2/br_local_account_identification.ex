defmodule Adyen.BalancePlatform.V2.BRLocalAccountIdentification do
  @moduledoc """
  Provides struct and type for a BRLocalAccountIdentification
  """

  @type t :: %__MODULE__{
          accountNumber: String.t(),
          bankCode: String.t(),
          branchNumber: String.t(),
          ispb: String.t() | nil,
          type: String.t()
        }

  defstruct [:accountNumber, :bankCode, :branchNumber, :ispb, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountNumber: :string,
      bankCode: :string,
      branchNumber: :string,
      ispb: :string,
      type: {:const, "brLocal"}
    ]
  end
end
