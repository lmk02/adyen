defmodule Adyen.Transfer.V4.NetworkReason do
  @moduledoc """
  Provides struct and type for a NetworkReason
  """

  @type t :: %__MODULE__{
          code: String.t() | nil,
          description: String.t() | nil,
          namespace: String.t() | nil
        }

  defstruct [:code, :description, :namespace]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      code: :string,
      description: :string,
      namespace:
        {:enum,
         [
           "iso8583ResponseCode",
           "ukFpsRejectionCode",
           "ukFpsReturnReasonCode",
           "usAchReturnReasonCode"
         ]}
    ]
  end
end
