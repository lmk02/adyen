defmodule Adyen.Checkout.V68.ThreeDSRequestorAuthenticationInfo do
  @moduledoc """
  Provides struct and type for a ThreeDSRequestorAuthenticationInfo
  """

  @type t :: %__MODULE__{
          threeDSReqAuthData: String.t() | nil,
          threeDSReqAuthMethod: String.t() | nil,
          threeDSReqAuthTimestamp: String.t() | nil
        }

  defstruct [:threeDSReqAuthData, :threeDSReqAuthMethod, :threeDSReqAuthTimestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      threeDSReqAuthData: :string,
      threeDSReqAuthMethod: {:enum, ["01", "02", "03", "04", "05", "06"]},
      threeDSReqAuthTimestamp: :string
    ]
  end
end
