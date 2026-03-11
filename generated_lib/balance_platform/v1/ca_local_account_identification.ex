defmodule Adyen.BalancePlatform.V1.CALocalAccountIdentification do
  @moduledoc """
  Provides struct and type for a CALocalAccountIdentification
  """

  @type t :: %__MODULE__{
          accountNumber: String.t(),
          institutionNumber: String.t(),
          transitNumber: String.t(),
          type: String.t()
        }

  defstruct [:accountNumber, :institutionNumber, :transitNumber, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountNumber: :string,
      institutionNumber: :string,
      transitNumber: :string,
      type: {:const, "caLocal"}
    ]
  end
end
