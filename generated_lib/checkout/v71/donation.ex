defmodule Adyen.Checkout.V71.Donation do
  @moduledoc """
  Provides struct and type for a Donation
  """

  @type t :: %__MODULE__{
          currency: String.t(),
          donationType: String.t(),
          maxRoundupAmount: integer | nil,
          type: String.t(),
          values: [integer] | nil
        }

  defstruct [:currency, :donationType, :maxRoundupAmount, :type, :values]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      currency: :string,
      donationType: :string,
      maxRoundupAmount: {:integer, "int64"},
      type: :string,
      values: [integer: "int64"]
    ]
  end
end
