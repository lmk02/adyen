defmodule Adyen.BalancePlatform.V1.BalanceAccountUpdateRequest do
  @moduledoc """
  Provides struct and type for a BalanceAccountUpdateRequest
  """

  @type t :: %__MODULE__{
          accountHolderId: String.t() | nil,
          defaultCurrencyCode: String.t() | nil,
          description: String.t() | nil,
          reference: String.t() | nil,
          status: String.t() | nil,
          sweepConfigurations: map | nil,
          timeZone: String.t() | nil
        }

  defstruct [
    :accountHolderId,
    :defaultCurrencyCode,
    :description,
    :reference,
    :status,
    :sweepConfigurations,
    :timeZone
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderId: :string,
      defaultCurrencyCode: :string,
      description: :string,
      reference: :string,
      status: {:enum, ["Active", "Closed", "Inactive", "Suspended"]},
      sweepConfigurations: :map,
      timeZone: :string
    ]
  end
end
