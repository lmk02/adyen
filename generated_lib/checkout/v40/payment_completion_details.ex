defmodule Adyen.Checkout.V40.PaymentCompletionDetails do
  @moduledoc """
  Provides struct and type for a PaymentCompletionDetails
  """

  @type t :: %__MODULE__{
          MD: String.t() | nil,
          PaReq: String.t() | nil,
          PaRes: String.t() | nil,
          authorization_token: String.t() | nil,
          billingToken: String.t() | nil,
          "cupsecureplus.smscode": String.t() | nil,
          facilitatorAccessToken: String.t() | nil,
          oneTimePasscode: String.t() | nil,
          orderID: String.t() | nil,
          payerID: String.t() | nil,
          payload: String.t() | nil,
          paymentID: String.t() | nil,
          paymentStatus: String.t() | nil,
          redirectResult: String.t() | nil,
          resultCode: String.t() | nil,
          returnUrlQueryString: String.t() | nil,
          threeDSResult: String.t() | nil,
          "threeds2.challengeResult": String.t() | nil,
          "threeds2.fingerprint": String.t() | nil,
          vaultToken: String.t() | nil
        }

  defstruct [
    :MD,
    :PaReq,
    :PaRes,
    :authorization_token,
    :billingToken,
    :"cupsecureplus.smscode",
    :facilitatorAccessToken,
    :oneTimePasscode,
    :orderID,
    :payerID,
    :payload,
    :paymentID,
    :paymentStatus,
    :redirectResult,
    :resultCode,
    :returnUrlQueryString,
    :threeDSResult,
    :"threeds2.challengeResult",
    :"threeds2.fingerprint",
    :vaultToken
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      MD: :string,
      PaReq: :string,
      PaRes: :string,
      authorization_token: :string,
      billingToken: :string,
      "cupsecureplus.smscode": :string,
      facilitatorAccessToken: :string,
      oneTimePasscode: :string,
      orderID: :string,
      payerID: :string,
      payload: :string,
      paymentID: :string,
      paymentStatus: :string,
      redirectResult: :string,
      resultCode: :string,
      returnUrlQueryString: :string,
      threeDSResult: :string,
      "threeds2.challengeResult": :string,
      "threeds2.fingerprint": :string,
      vaultToken: :string
    ]
  end
end
