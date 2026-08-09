defmodule Adyen.Management.V3.CarnetInfo do
  @moduledoc """
  Provides struct and type for a CarnetInfo
  """

  @type t :: %__MODULE__{
          addMccAcronym: boolean | nil,
          transactionDescription: Adyen.Management.V3.TransactionDescriptionInfo.t() | nil
        }

  defstruct [:addMccAcronym, :transactionDescription]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      addMccAcronym: :boolean,
      transactionDescription: {Adyen.Management.V3.TransactionDescriptionInfo, :t}
    ]
  end
end
