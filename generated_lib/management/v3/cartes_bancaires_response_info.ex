defmodule Adyen.Management.V3.CartesBancairesResponseInfo do
  @moduledoc """
  Provides struct and type for a CartesBancairesResponseInfo
  """

  @type t :: %__MODULE__{
          siret: String.t() | nil,
          transactionDescription: Adyen.Management.V3.TransactionDescriptionResponseInfo.t() | nil
        }

  defstruct [:siret, :transactionDescription]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      siret: :string,
      transactionDescription: {Adyen.Management.V3.TransactionDescriptionResponseInfo, :t}
    ]
  end
end
