defmodule Adyen.Checkout.V71.EcontextVoucherDetails do
  @moduledoc """
  Provides struct and type for a EcontextVoucherDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          firstName: String.t(),
          lastName: String.t(),
          sdkData: String.t() | nil,
          shopperEmail: String.t(),
          telephoneNumber: String.t(),
          type: String.t()
        }

  defstruct [
    :checkoutAttemptId,
    :firstName,
    :lastName,
    :sdkData,
    :shopperEmail,
    :telephoneNumber,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checkoutAttemptId: :string,
      firstName: :string,
      lastName: :string,
      sdkData: :string,
      shopperEmail: :string,
      telephoneNumber: :string,
      type:
        {:enum,
         [
           "econtext_seven_eleven",
           "econtext_online",
           "econtext",
           "econtext_stores",
           "econtext_atm"
         ]}
    ]
  end
end
