defmodule Adyen.Management.CartesBancairesInfo do
  @moduledoc """
  Provides struct and type for a CartesBancairesInfo
  """

  @type t :: %__MODULE__{
          siret: String.t(),
          transactionDescription: Adyen.Management.TransactionDescriptionInfo.t() | nil
        }

  defstruct [:siret, :transactionDescription]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [siret: :string, transactionDescription: {Adyen.Management.TransactionDescriptionInfo, :t}]
  end
end
