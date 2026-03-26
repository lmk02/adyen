defmodule Adyen.Checkout.V69.AlmaDetails do
  @moduledoc """
  Provides struct and type for a AlmaDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          feeType: String.t() | nil,
          sdkData: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:checkoutAttemptId, :feeType, :sdkData, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checkoutAttemptId: :string,
      feeType: {:enum, ["merchantPays", "shopperPays"]},
      sdkData: :string,
      type: {:const, "alma"}
    ]
  end
end
