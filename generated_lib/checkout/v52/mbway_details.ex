defmodule Adyen.Checkout.V52.MbwayDetails do
  @moduledoc """
  Provides struct and type for a MbwayDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          shopperEmail: String.t(),
          telephoneNumber: String.t(),
          type: String.t() | nil
        }

  defstruct [:checkoutAttemptId, :shopperEmail, :telephoneNumber, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checkoutAttemptId: :string,
      shopperEmail: :string,
      telephoneNumber: :string,
      type: {:const, "mbway"}
    ]
  end
end
