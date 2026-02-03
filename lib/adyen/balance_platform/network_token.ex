defmodule Adyen.BalancePlatform.NetworkToken do
  @moduledoc """
  Provides struct and type for a NetworkToken
  """

  alias Adyen.BalancePlatform.DeviceInfo
  alias Adyen.BalancePlatform.NetworkTokenRequestor

  @type t :: %__MODULE__{
          brandVariant: String.t() | nil,
          creationDate: DateTime.t() | nil,
          device: DeviceInfo.t() | nil,
          id: String.t() | nil,
          paymentInstrumentId: String.t() | nil,
          status: String.t() | nil,
          tokenLastFour: String.t() | nil,
          tokenRequestor: NetworkTokenRequestor.t() | nil,
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
      device: {DeviceInfo, :t},
      id: :string,
      paymentInstrumentId: :string,
      status: {:enum, ["active", "inactive", "suspended", "closed"]},
      tokenLastFour: :string,
      tokenRequestor: {NetworkTokenRequestor, :t},
      type: :string
    ]
  end
end
