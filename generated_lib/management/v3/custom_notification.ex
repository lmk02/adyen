defmodule Adyen.Management.V3.CustomNotification do
  @moduledoc """
  Provides struct and type for a CustomNotification
  """

  @type t :: %__MODULE__{
          amount: Adyen.Management.V3.Amount.t() | nil,
          eventCode: String.t() | nil,
          eventDate: DateTime.t() | nil,
          merchantReference: String.t() | nil,
          paymentMethod: String.t() | nil,
          reason: String.t() | nil,
          success: boolean | nil
        }

  defstruct [
    :amount,
    :eventCode,
    :eventDate,
    :merchantReference,
    :paymentMethod,
    :reason,
    :success
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.Management.V3.Amount, :t},
      eventCode: :string,
      eventDate: {:string, "date-time"},
      merchantReference: :string,
      paymentMethod: :string,
      reason: :string,
      success: :boolean
    ]
  end
end
