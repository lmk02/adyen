defmodule Adyen.Payment.V64.AuthenticationResultResponse do
  @moduledoc """
  Provides struct and type for a AuthenticationResultResponse
  """

  @type t :: %__MODULE__{
          threeDS1Result: Adyen.Payment.V64.ThreeDs1Result.t() | nil,
          threeDS2Result: Adyen.Payment.V64.ThreeDs2Result.t() | nil
        }

  defstruct [:threeDS1Result, :threeDS2Result]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      threeDS1Result: {Adyen.Payment.V64.ThreeDs1Result, :t},
      threeDS2Result: {Adyen.Payment.V64.ThreeDs2Result, :t}
    ]
  end
end
