defmodule Adyen.Checkout.V67.AmazonPayDetails do
  @moduledoc """
  Provides struct and type for a AmazonPayDetails
  """

  @type t :: %__MODULE__{
          amazonPayToken: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          checkoutSessionId: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:amazonPayToken, :checkoutAttemptId, :checkoutSessionId, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amazonPayToken: :string,
      checkoutAttemptId: :string,
      checkoutSessionId: :string,
      type: {:const, "amazonpay"}
    ]
  end
end
