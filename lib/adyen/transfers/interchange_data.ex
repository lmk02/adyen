defmodule Adyen.Transfers.InterchangeData do
  @moduledoc """
  Provides struct and type for a InterchangeData
  """

  @type t :: %__MODULE__{
          interchangeAmount: Adyen.Transfers.Amount.t() | nil,
          interchangeRateIndicator: String.t() | nil,
          type: String.t()
        }

  defstruct [:interchangeAmount, :interchangeRateIndicator, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      interchangeAmount: {Adyen.Transfers.Amount, :t},
      interchangeRateIndicator: :string,
      type: {:const, "interchangeData"}
    ]
  end
end
