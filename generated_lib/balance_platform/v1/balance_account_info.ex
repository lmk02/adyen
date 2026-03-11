defmodule Adyen.BalancePlatform.V1.BalanceAccountInfo do
  @moduledoc """
  Provides struct and type for a BalanceAccountInfo
  """

  @type t :: %__MODULE__{
          accountHolderId: String.t(),
          defaultCurrencyCode: String.t() | nil,
          description: String.t() | nil,
          reference: String.t() | nil,
          sweepConfigurations: map | nil,
          timeZone: String.t() | nil
        }

  defstruct [
    :accountHolderId,
    :defaultCurrencyCode,
    :description,
    :reference,
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
      sweepConfigurations: :map,
      timeZone: :string
    ]
  end
end
