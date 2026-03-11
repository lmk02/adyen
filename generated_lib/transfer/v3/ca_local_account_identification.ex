defmodule Adyen.Transfer.V3.CALocalAccountIdentification do
  @moduledoc """
  Provides struct and type for a CALocalAccountIdentification
  """

  @type t :: %__MODULE__{
          accountNumber: String.t(),
          accountType: String.t() | nil,
          institutionNumber: String.t(),
          transitNumber: String.t(),
          type: String.t()
        }

  defstruct [:accountNumber, :accountType, :institutionNumber, :transitNumber, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountNumber: :string,
      accountType: {:enum, ["checking", "savings"]},
      institutionNumber: :string,
      transitNumber: :string,
      type: {:const, "caLocal"}
    ]
  end
end
