defmodule Adyen.Checkout.V72.ThreeDSRequestorPriorAuthenticationInfo do
  @moduledoc """
  Provides struct and type for a ThreeDSRequestorPriorAuthenticationInfo
  """

  @type t :: %__MODULE__{
          threeDSReqPriorAuthData: String.t() | nil,
          threeDSReqPriorAuthMethod: String.t() | nil,
          threeDSReqPriorAuthTimestamp: String.t() | nil,
          threeDSReqPriorRef: String.t() | nil
        }

  defstruct [
    :threeDSReqPriorAuthData,
    :threeDSReqPriorAuthMethod,
    :threeDSReqPriorAuthTimestamp,
    :threeDSReqPriorRef
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      threeDSReqPriorAuthData: :string,
      threeDSReqPriorAuthMethod: {:enum, ["01", "02", "03", "04"]},
      threeDSReqPriorAuthTimestamp: :string,
      threeDSReqPriorRef: :string
    ]
  end
end
