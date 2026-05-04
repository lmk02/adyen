defmodule Adyen.Management.V3.BcmcUpdateInfo do
  @moduledoc """
  Provides struct and type for a BcmcUpdateInfo
  """

  @type t :: %__MODULE__{
          transactionDescription: Adyen.Management.V3.TransactionDescriptionInfo.t() | nil
        }

  defstruct [:transactionDescription]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [transactionDescription: {Adyen.Management.V3.TransactionDescriptionInfo, :t}]
  end
end
