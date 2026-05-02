defmodule Adyen.Management.V1.PulseResponseInfo do
  @moduledoc """
  Provides struct and type for a PulseResponseInfo
  """

  @type t :: %__MODULE__{
          processingType: String.t(),
          transactionDescription: Adyen.Management.V1.TransactionDescriptionResponseInfo.t() | nil
        }

  defstruct [:processingType, :transactionDescription]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      processingType: {:enum, ["billpay", "ecom", "pos"]},
      transactionDescription: {Adyen.Management.V1.TransactionDescriptionResponseInfo, :t}
    ]
  end
end
