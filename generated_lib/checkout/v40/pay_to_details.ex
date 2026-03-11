defmodule Adyen.Checkout.V40.PayToDetails do
  @moduledoc """
  Provides struct and type for a PayToDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          shopperAccountIdentifier: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:checkoutAttemptId, :recurringDetailReference, :shopperAccountIdentifier, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checkoutAttemptId: :string,
      recurringDetailReference: :string,
      shopperAccountIdentifier: :string,
      type: {:const, "payto"}
    ]
  end
end
