defmodule Adyen.Management.V1.PayByBankPlaidResponseInfo do
  @moduledoc """
  Provides struct and type for a PayByBankPlaidResponseInfo
  """

  @type t :: %__MODULE__{
          logo: String.t() | nil,
          transactionDescription: Adyen.Management.V1.TransactionDescriptionResponseInfo.t() | nil
        }

  defstruct [:logo, :transactionDescription]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      logo: :string,
      transactionDescription: {Adyen.Management.V1.TransactionDescriptionResponseInfo, :t}
    ]
  end
end
