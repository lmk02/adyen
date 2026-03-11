defmodule Adyen.Payment.V64.PaymentResult do
  @moduledoc """
  Provides struct and type for a PaymentResult
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          authCode: String.t() | nil,
          dccAmount: Adyen.Payment.V64.Amount.t() | nil,
          dccSignature: String.t() | nil,
          fraudResult: Adyen.Payment.V64.FraudResult.t() | nil,
          issuerUrl: String.t() | nil,
          md: String.t() | nil,
          paRequest: String.t() | nil,
          pspReference: String.t() | nil,
          refusalReason: String.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [
    :additionalData,
    :authCode,
    :dccAmount,
    :dccSignature,
    :fraudResult,
    :issuerUrl,
    :md,
    :paRequest,
    :pspReference,
    :refusalReason,
    :resultCode
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additionalData: :map,
      authCode: :string,
      dccAmount: {Adyen.Payment.V64.Amount, :t},
      dccSignature: :string,
      fraudResult: {Adyen.Payment.V64.FraudResult, :t},
      issuerUrl: :string,
      md: :string,
      paRequest: :string,
      pspReference: :string,
      refusalReason: :string,
      resultCode:
        {:enum,
         [
           "AuthenticationFinished",
           "AuthenticationNotRequired",
           "Authorised",
           "Cancelled",
           "ChallengeShopper",
           "Error",
           "IdentifyShopper",
           "PartiallyAuthorised",
           "Pending",
           "PresentToShopper",
           "Received",
           "RedirectShopper",
           "Refused",
           "Success"
         ]}
    ]
  end
end
