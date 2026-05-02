defmodule Adyen.Management.V1.DinersResponseInfo do
  @moduledoc """
  Provides struct and type for a DinersResponseInfo
  """

  @type t :: %__MODULE__{
          midNumber: String.t() | nil,
          reuseMidNumber: boolean | nil,
          serviceLevel: String.t() | nil,
          transactionDescription: Adyen.Management.V1.TransactionDescriptionResponseInfo.t() | nil
        }

  defstruct [:midNumber, :reuseMidNumber, :serviceLevel, :transactionDescription]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      midNumber: :string,
      reuseMidNumber: :boolean,
      serviceLevel: :string,
      transactionDescription: {Adyen.Management.V1.TransactionDescriptionResponseInfo, :t}
    ]
  end
end
