defmodule Adyen.BalancePlatform.BalanceAccountUpdateRequest do
  @moduledoc """
  Provides struct and type for a BalanceAccountUpdateRequest
  """

  alias Adyen.BalancePlatform.PlatformPaymentConfiguration

  @type t :: %__MODULE__{
          accountHolderId: String.t() | nil,
          description: String.t() | nil,
          metadata: map | nil,
          platformPaymentConfiguration: PlatformPaymentConfiguration.t() | nil,
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
      platformPaymentConfiguration: {PlatformPaymentConfiguration, :t},
      reference: :string,
      status: {:enum, ["active", "closed", "inactive", "suspended"]},
      timeZone: :string
    ]
  end
end
