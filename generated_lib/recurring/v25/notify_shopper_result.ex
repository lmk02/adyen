defmodule Adyen.Recurring.V25.NotifyShopperResult do
  @moduledoc """
  Provides struct and type for a NotifyShopperResult
  """

  @type t :: %__MODULE__{
          displayedReference: String.t() | nil,
          message: String.t() | nil,
          pspReference: String.t() | nil,
          reference: String.t() | nil,
          resultCode: String.t() | nil,
          shopperNotificationReference: String.t() | nil,
          storedPaymentMethodId: String.t() | nil
        }

  defstruct [
    :displayedReference,
    :message,
    :pspReference,
    :reference,
    :resultCode,
    :shopperNotificationReference,
    :storedPaymentMethodId
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      displayedReference: :string,
      message: :string,
      pspReference: :string,
      reference: :string,
      resultCode: :string,
      shopperNotificationReference: :string,
      storedPaymentMethodId: :string
    ]
  end
end
