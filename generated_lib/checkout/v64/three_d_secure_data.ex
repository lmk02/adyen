defmodule Adyen.Checkout.V64.ThreeDSecureData do
  @moduledoc """
  Provides struct and type for a ThreeDSecureData
  """

  @type t :: %__MODULE__{
          authenticationResponse: String.t() | nil,
          cavv: String.t() | nil,
          cavvAlgorithm: String.t() | nil,
          directoryResponse: String.t() | nil,
          dsTransID: String.t() | nil,
          eci: String.t() | nil,
          threeDSVersion: String.t() | nil,
          xid: String.t() | nil
        }

  defstruct [
    :authenticationResponse,
    :cavv,
    :cavvAlgorithm,
    :directoryResponse,
    :dsTransID,
    :eci,
    :threeDSVersion,
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
      directoryResponse: {:enum, ["A", "C", "D", "I", "N", "R", "U", "Y"]},
      dsTransID: :string,
      eci: :string,
      threeDSVersion: :string,
      xid: {:string, "byte"}
    ]
  end
end
