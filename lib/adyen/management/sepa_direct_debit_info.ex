defmodule Adyen.Management.SepaDirectDebitInfo do
  @moduledoc """
  Provides struct and type for a SepaDirectDebitInfo
  """

  @type t :: %__MODULE__{
          creditorId: String.t() | nil,
          transactionDescription: Adyen.Management.TransactionDescriptionInfo.t() | nil
        }

  defstruct [:creditorId, :transactionDescription]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      creditorId: :string,
      transactionDescription: {Adyen.Management.TransactionDescriptionInfo, :t}
    ]
  end
end
