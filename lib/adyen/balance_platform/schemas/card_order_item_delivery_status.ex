defmodule Adyen.BalancePlatform.CardOrderItemDeliveryStatus do
  @moduledoc """
  Provides struct and type for a CardOrderItemDeliveryStatus
  """

  @type t :: %__MODULE__{
          errorMessage: String.t() | nil,
          status: String.t() | nil,
          trackingNumber: String.t() | nil
        }

  defstruct [:errorMessage, :status, :trackingNumber]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      errorMessage: :string,
      status:
        {:enum,
         [
           "created",
           "delivered",
           "notApplicable",
           "processing",
           "produced",
           "rejected",
           "shipped",
           "unknown"
         ]},
      trackingNumber: :string
    ]
  end
end
