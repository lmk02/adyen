defmodule Adyen.Management.V3.MCResponseInfo do
  @moduledoc """
  Provides struct and type for a MCResponseInfo
  """

  @type t :: %__MODULE__{
          transactionDescription: Adyen.Management.V3.TransactionDescriptionResponseInfo.t() | nil
        }

  defstruct [:transactionDescription]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [transactionDescription: {Adyen.Management.V3.TransactionDescriptionResponseInfo, :t}]
  end
end
