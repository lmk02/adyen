defmodule Adyen.Management.V3.GooglePayResponseInfo do
  @moduledoc """
  Provides struct and type for a GooglePayResponseInfo
  """

  @type t :: %__MODULE__{merchantId: String.t() | nil, reuseMerchantId: boolean | nil}

  defstruct [:merchantId, :reuseMerchantId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [merchantId: :string, reuseMerchantId: :boolean]
  end
end
