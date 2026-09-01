defmodule Adyen.Checkout.V40.DBaraiDetails do
  @moduledoc """
  Provides struct and type for a DBaraiDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:checkoutAttemptId, :recurringDetailReference, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [checkoutAttemptId: :string, recurringDetailReference: :string, type: {:const, "dbarai"}]
  end
end
