defmodule Adyen.Checkout.V70.KlarnaNetworkDetails do
  @moduledoc """
  Provides struct and type for a KlarnaNetworkDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          klarnaNetworkData: String.t() | nil,
          sdkData: String.t() | nil,
          type: String.t()
        }

  defstruct [:checkoutAttemptId, :klarnaNetworkData, :sdkData, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checkoutAttemptId: :string,
      klarnaNetworkData: :string,
      sdkData: :string,
      type: {:const, "klarna_network"}
    ]
  end
end
