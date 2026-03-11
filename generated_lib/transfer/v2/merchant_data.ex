defmodule Adyen.Transfer.V2.MerchantData do
  @moduledoc """
  Provides struct and type for a MerchantData
  """

  @type t :: %__MODULE__{
          acquirerId: String.t() | nil,
          mcc: String.t() | nil,
          merchantId: String.t() | nil,
          nameLocation: Adyen.Transfer.V2.NameLocation.t() | nil,
          postalCode: String.t() | nil
        }

  defstruct [:acquirerId, :mcc, :merchantId, :nameLocation, :postalCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      acquirerId: :string,
      mcc: :string,
      merchantId: :string,
      nameLocation: {Adyen.Transfer.V2.NameLocation, :t},
      postalCode: :string
    ]
  end
end
