defmodule Adyen.Management.V3.DinersInfo do
  @moduledoc """
  Provides struct and type for a DinersInfo
  """

  @type t :: %__MODULE__{
          midNumber: String.t() | nil,
          reuseMidNumber: boolean,
          serviceLevel: String.t() | nil,
          transactionDescription: Adyen.Management.V3.TransactionDescriptionInfo.t() | nil
        }

  defstruct [:midNumber, :reuseMidNumber, :serviceLevel, :transactionDescription]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      midNumber: :string,
      reuseMidNumber: :boolean,
      serviceLevel: {:enum, ["noContract", "gatewayContract"]},
      transactionDescription: {Adyen.Management.V3.TransactionDescriptionInfo, :t}
    ]
  end
end
