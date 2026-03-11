defmodule Adyen.Payments.ModificationResult do
  @moduledoc """
  Provides struct and type for a ModificationResult
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          pspReference: String.t(),
          response: String.t()
        }

  defstruct [:additionalData, :pspReference, :response]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additionalData: :map,
      pspReference: :string,
      response:
        {:enum,
         [
           "[capture-received]",
           "[cancel-received]",
           "[refund-received]",
           "[cancelOrRefund-received]",
           "[adjustAuthorisation-received]",
           "[donation-received]",
           "[technical-cancel-received]",
           "[voidPendingRefund-received]",
           "Authorised",
           "Refused",
           "Error"
         ]}
    ]
  end
end
