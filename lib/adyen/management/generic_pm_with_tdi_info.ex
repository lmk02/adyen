defmodule Adyen.Management.GenericPmWithTdiInfo do
  @moduledoc """
  Provides struct and type for a GenericPmWithTdiInfo
  """

  @type t :: %__MODULE__{
          transactionDescription: Adyen.Management.TransactionDescriptionInfo.t() | nil
        }

  defstruct [:transactionDescription]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [transactionDescription: {Adyen.Management.TransactionDescriptionInfo, :t}]
  end
end
