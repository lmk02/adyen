defmodule Adyen.BalancePlatform.NetworkToken do
  @moduledoc """
  Provides struct and type for a NetworkToken
  """

  @type t :: %__MODULE__{
          brandVariant: String.t() | nil,
          creationDate: DateTime.t() | nil,
          device: Adyen.BalancePlatform.DeviceInfo.t() | nil,
          id: String.t() | nil,
          paymentInstrumentId: String.t() | nil,
          status: String.t() | nil,
          tokenLastFour: String.t() | nil,
          tokenRequestor: Adyen.BalancePlatform.NetworkTokenRequestor.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :brandVariant,
    :creationDate,
    :device,
    :id,
    :paymentInstrumentId,
    :status,
    :tokenLastFour,
    :tokenRequestor,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      brandVariant: :string,
      creationDate: {:string, "date-time"},
      device: {Adyen.BalancePlatform.DeviceInfo, :t},
      id: :string,
      paymentInstrumentId: :string,
      status: {:enum, ["active", "inactive", "suspended", "closed"]},
      tokenLastFour: :string,
      tokenRequestor: {Adyen.BalancePlatform.NetworkTokenRequestor, :t},
      type: :string
    ]
  end
end
