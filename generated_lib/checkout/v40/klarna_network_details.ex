defmodule Adyen.Checkout.V40.KlarnaNetworkDetails do
  @moduledoc """
  Provides struct and type for a KlarnaNetworkDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          klarnaNetworkData: String.t() | nil,
          klarnaNetworkSessionToken: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          type: String.t()
        }

  defstruct [
    :checkoutAttemptId,
    :klarnaNetworkData,
    :klarnaNetworkSessionToken,
    :recurringDetailReference,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checkoutAttemptId: :string,
      klarnaNetworkData: :string,
      klarnaNetworkSessionToken: :string,
      recurringDetailReference: :string,
      type: {:const, "klarna_network"}
    ]
  end
end
