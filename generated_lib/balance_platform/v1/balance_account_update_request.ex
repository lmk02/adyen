defmodule Adyen.BalancePlatform.V1.BalanceAccountUpdateRequest do
  @moduledoc """
  Provides struct and type for a BalanceAccountUpdateRequest
  """

  @type t :: %__MODULE__{
          accountHolderId: String.t() | nil,
          description: String.t() | nil,
          metadata: map | nil,
          platformPaymentConfiguration:
            Adyen.BalancePlatform.V1.PlatformPaymentConfiguration.t() | nil,
          reference: String.t() | nil,
          status: String.t() | nil,
          timeZone: String.t() | nil
        }

  defstruct [
    :accountHolderId,
    :description,
    :metadata,
    :platformPaymentConfiguration,
    :reference,
    :status,
    :timeZone
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderId: :string,
      description: :string,
      metadata: :map,
      platformPaymentConfiguration: {Adyen.BalancePlatform.V1.PlatformPaymentConfiguration, :t},
      reference: :string,
      status: {:enum, ["Active", "Closed", "Inactive", "Suspended"]},
      timeZone: :string
    ]
  end
end
