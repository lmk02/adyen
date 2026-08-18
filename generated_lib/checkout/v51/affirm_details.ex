defmodule Adyen.Checkout.V51.AffirmDetails do
  @moduledoc """
  Provides struct and type for a AffirmDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          financingProgram: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:checkoutAttemptId, :financingProgram, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [checkoutAttemptId: :string, financingProgram: :string, type: {:const, "affirm"}]
  end
end
