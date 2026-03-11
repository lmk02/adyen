defmodule Adyen.Checkout.V71.FastlaneDetails do
  @moduledoc """
  Provides struct and type for a FastlaneDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          fastlaneData: String.t(),
          recurringDetailReference: String.t() | nil,
          sdkData: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          type: String.t()
        }

  defstruct [
    :checkoutAttemptId,
    :fastlaneData,
    :recurringDetailReference,
    :sdkData,
    :storedPaymentMethodId,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checkoutAttemptId: :string,
      fastlaneData: :string,
      recurringDetailReference: :string,
      sdkData: :string,
      storedPaymentMethodId: :string,
      type: {:const, "fastlane"}
    ]
  end
end
