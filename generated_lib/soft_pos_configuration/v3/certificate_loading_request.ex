defmodule Adyen.SoftPOSConfiguration.V3.CertificateLoadingRequest do
  @moduledoc """
  Provides struct and type for a CertificateLoadingRequest
  """

  @type t :: %__MODULE__{
          merchantAccount: String.t(),
          setupToken: String.t(),
          store: String.t() | nil,
          subMerchantData: Adyen.SoftPOSConfiguration.V3.SubMerchantData.t() | nil
        }

  defstruct [:merchantAccount, :setupToken, :store, :subMerchantData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      merchantAccount: :string,
      setupToken: :string,
      store: :string,
      subMerchantData: {Adyen.SoftPOSConfiguration.V3.SubMerchantData, :t}
    ]
  end
end
