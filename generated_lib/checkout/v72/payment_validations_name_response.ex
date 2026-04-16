defmodule Adyen.Checkout.V72.PaymentValidationsNameResponse do
  @moduledoc """
  Provides struct and type for a PaymentValidationsNameResponse
  """

  @type t :: %__MODULE__{
          rawResponse: Adyen.Checkout.V72.PaymentValidationsNameResultRawResponse.t() | nil,
          result: Adyen.Checkout.V72.PaymentValidationsNameResultResponse.t() | nil,
          status: String.t() | nil
        }

  defstruct [:rawResponse, :result, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      rawResponse: {Adyen.Checkout.V72.PaymentValidationsNameResultRawResponse, :t},
      result: {Adyen.Checkout.V72.PaymentValidationsNameResultResponse, :t},
      status: {:enum, ["notPerformed", "notSupported", "performed"]}
    ]
  end
end
