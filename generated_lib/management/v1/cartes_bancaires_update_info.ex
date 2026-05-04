defmodule Adyen.Management.V1.CartesBancairesUpdateInfo do
  @moduledoc """
  Provides struct and type for a CartesBancairesUpdateInfo
  """

  @type t :: %__MODULE__{
          transactionDescription: Adyen.Management.V1.TransactionDescriptionInfo.t() | nil
        }

  defstruct [:transactionDescription]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [transactionDescription: {Adyen.Management.V1.TransactionDescriptionInfo, :t}]
  end
end
