defmodule Adyen.Payment.V68.ThreeDSecureData do
  @moduledoc """
  Provides struct and type for a ThreeDSecureData
  """

  @type t :: %__MODULE__{
          authenticationResponse: String.t() | nil,
          cavv: String.t() | nil,
          cavvAlgorithm: String.t() | nil,
          challengeCancel: String.t() | nil,
          directoryResponse: String.t() | nil,
          dsTransID: String.t() | nil,
          eci: String.t() | nil,
          riskScore: String.t() | nil,
          threeDSVersion: String.t() | nil,
          tokenAuthenticationVerificationValue: String.t() | nil,
          transStatusReason: String.t() | nil,
          xid: String.t() | nil
        }

  defstruct [
    :authenticationResponse,
    :cavv,
    :cavvAlgorithm,
    :challengeCancel,
    :directoryResponse,
    :dsTransID,
    :eci,
    :riskScore,
    :threeDSVersion,
    :tokenAuthenticationVerificationValue,
    :transStatusReason,
    :xid
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      authenticationResponse: {:enum, ["Y", "N", "U", "A"]},
      cavv: {:string, "byte"},
      cavvAlgorithm: :string,
      challengeCancel: {:enum, ["01", "02", "03", "04", "05", "06", "07"]},
      directoryResponse: {:enum, ["A", "C", "D", "I", "N", "R", "U", "Y"]},
      dsTransID: :string,
      eci: :string,
      riskScore: :string,
      threeDSVersion: :string,
      tokenAuthenticationVerificationValue: {:string, "byte"},
      transStatusReason: :string,
      xid: {:string, "byte"}
    ]
  end
end
