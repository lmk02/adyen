defmodule Adyen.Checkout.V72.MobilePayDetails do
  @moduledoc """
  Provides struct and type for a MobilePayDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          sdkData: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:checkoutAttemptId, :sdkData, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [checkoutAttemptId: :string, sdkData: :string, type: {:const, "mobilepay"}]
  end
end
