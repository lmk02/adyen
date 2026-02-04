defmodule Adyen.Checkout.PaymentValidationsNameResponse do
  @moduledoc """
  Provides struct and type for a PaymentValidationsNameResponse
  """

  @type t :: %__MODULE__{
          rawResponse: Adyen.Checkout.PaymentValidationsNameResultRawResponse.t() | nil,
          result: Adyen.Checkout.PaymentValidationsNameResultResponse.t() | nil,
          status: String.t() | nil
        }

  defstruct [:rawResponse, :result, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      rawResponse: {Adyen.Checkout.PaymentValidationsNameResultRawResponse, :t},
      result: {Adyen.Checkout.PaymentValidationsNameResultResponse, :t},
      status: {:enum, ["notPerformed", "notSupported", "performed"]}
    ]
  end
end
