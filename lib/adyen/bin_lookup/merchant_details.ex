defmodule Adyen.BinLookup.MerchantDetails do
  @moduledoc """
  Provides struct and type for a MerchantDetails
  """

  @type t :: %__MODULE__{
          countryCode: String.t() | nil,
          enrolledIn3DSecure: boolean | nil,
          mcc: String.t() | nil
        }

  defstruct [:countryCode, :enrolledIn3DSecure, :mcc]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [countryCode: :string, enrolledIn3DSecure: :boolean, mcc: :string]
  end
end
