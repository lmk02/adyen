defmodule Adyen.Transfer.V4.InterchangeData do
  @moduledoc """
  Provides struct and type for a InterchangeData
  """

  @type t :: %__MODULE__{
          interchangeAmount: Adyen.Transfer.V4.Amount.t() | nil,
          interchangeRateIndicator: String.t() | nil,
          type: String.t()
        }

  defstruct [:interchangeAmount, :interchangeRateIndicator, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      interchangeAmount: {Adyen.Transfer.V4.Amount, :t},
      interchangeRateIndicator: :string,
      type: {:const, "interchangeData"}
    ]
  end
end
