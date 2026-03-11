defmodule Adyen.Management.GooglePayInfo do
  @moduledoc """
  Provides struct and type for a GooglePayInfo
  """

  @type t :: %__MODULE__{merchantId: String.t(), reuseMerchantId: boolean | nil}

  defstruct [:merchantId, :reuseMerchantId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [merchantId: :string, reuseMerchantId: :boolean]
  end
end
