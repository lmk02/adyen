defmodule Adyen.BalancePlatform.PaymentInstrumentRevealInfo do
  @moduledoc """
  Provides struct and type for a PaymentInstrumentRevealInfo
  """

  @type t :: %__MODULE__{
          cvc: String.t(),
          expiration: Adyen.BalancePlatform.Expiry.t(),
          pan: String.t()
        }

  defstruct [:cvc, :expiration, :pan]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [cvc: :string, expiration: {Adyen.BalancePlatform.Expiry, :t}, pan: :string]
  end
end
