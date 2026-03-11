defmodule Adyen.Checkout.V37.FastlaneDetails do
  @moduledoc """
  Provides struct and type for a FastlaneDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          fastlaneData: String.t(),
          recurringDetailReference: String.t() | nil,
          type: String.t()
        }

  defstruct [:checkoutAttemptId, :fastlaneData, :recurringDetailReference, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checkoutAttemptId: :string,
      fastlaneData: :string,
      recurringDetailReference: :string,
      type: {:const, "fastlane"}
    ]
  end
end
