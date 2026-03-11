defmodule Adyen.Management.DinersInfo do
  @moduledoc """
  Provides struct and type for a DinersInfo
  """

  @type t :: %__MODULE__{
          midNumber: String.t() | nil,
          reuseMidNumber: boolean,
          serviceLevel: String.t() | nil,
          transactionDescription: Adyen.Management.TransactionDescriptionInfo.t() | nil
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
      transactionDescription: {Adyen.Management.TransactionDescriptionInfo, :t}
    ]
  end
end
