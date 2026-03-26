defmodule Adyen.Checkout.V65.KlarnaNetworkDetails do
  @moduledoc """
  Provides struct and type for a KlarnaNetworkDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          klarnaNetworkData: String.t() | nil,
          type: String.t()
        }

  defstruct [:checkoutAttemptId, :klarnaNetworkData, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [checkoutAttemptId: :string, klarnaNetworkData: :string, type: {:const, "klarna_network"}]
  end
end
