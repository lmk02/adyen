defmodule Adyen.Checkout.V64.ZipDetails do
  @moduledoc """
  Provides struct and type for a ZipDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          clickAndCollect: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :checkoutAttemptId,
    :clickAndCollect,
    :recurringDetailReference,
    :storedPaymentMethodId,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checkoutAttemptId: :string,
      clickAndCollect: :string,
      recurringDetailReference: :string,
      storedPaymentMethodId: :string,
      type: {:enum, ["zip", "zip_pos"]}
    ]
  end
end
