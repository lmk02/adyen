defmodule Adyen.Checkout.V49.AffirmDetails do
  @moduledoc """
  Provides struct and type for a AffirmDetails
  """

  @type t :: %__MODULE__{checkoutAttemptId: String.t() | nil, type: String.t() | nil}

  defstruct [:checkoutAttemptId, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [checkoutAttemptId: :string, type: {:const, "affirm"}]
  end
end
