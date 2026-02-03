defmodule Adyen.Checkout.PaymentValidationsNameResponse do
  @moduledoc """
  Provides struct and type for a PaymentValidationsNameResponse
  """

  alias Adyen.Checkout.PaymentValidationsNameResultRawResponse
  alias Adyen.Checkout.PaymentValidationsNameResultResponse

  @type t :: %__MODULE__{
          rawResponse: PaymentValidationsNameResultRawResponse.t() | nil,
          result: PaymentValidationsNameResultResponse.t() | nil,
          status: String.t() | nil
        }

  defstruct [:rawResponse, :result, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      rawResponse: {PaymentValidationsNameResultRawResponse, :t},
      result: {PaymentValidationsNameResultResponse, :t},
      status: {:enum, ["notPerformed", "notSupported", "performed"]}
    ]
  end
end
