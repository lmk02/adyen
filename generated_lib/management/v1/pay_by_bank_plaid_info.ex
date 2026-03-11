defmodule Adyen.Management.V1.PayByBankPlaidInfo do
  @moduledoc """
  Provides struct and type for a PayByBankPlaidInfo
  """

  @type t :: %__MODULE__{
          logo: String.t() | nil,
          transactionDescription: Adyen.Management.V1.TransactionDescriptionInfo.t() | nil
        }

  defstruct [:logo, :transactionDescription]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [logo: :string, transactionDescription: {Adyen.Management.V1.TransactionDescriptionInfo, :t}]
  end
end
