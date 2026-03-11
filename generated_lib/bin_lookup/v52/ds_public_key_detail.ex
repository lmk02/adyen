defmodule Adyen.BinLookup.V52.DSPublicKeyDetail do
  @moduledoc """
  Provides struct and type for a DSPublicKeyDetail
  """

  @type t :: %__MODULE__{
          brand: String.t() | nil,
          directoryServerId: String.t() | nil,
          fromSDKVersion: String.t() | nil,
          publicKey: String.t() | nil,
          rootCertificates: String.t() | nil
        }

  defstruct [:brand, :directoryServerId, :fromSDKVersion, :publicKey, :rootCertificates]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      brand: :string,
      directoryServerId: :string,
      fromSDKVersion: :string,
      publicKey: {:string, "byte"},
      rootCertificates: :string
    ]
  end
end
