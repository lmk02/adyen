defmodule Adyen.BalancePlatform.V2.CardOrder do
  @moduledoc """
  Provides struct and type for a CardOrder
  """

  @type t :: %__MODULE__{
          beginDate: DateTime.t() | nil,
          cardManufacturingProfileId: String.t() | nil,
          closedDate: DateTime.t() | nil,
          endDate: DateTime.t() | nil,
          id: String.t() | nil,
          lockDate: DateTime.t() | nil,
          serviceCenter: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [
    :beginDate,
    :cardManufacturingProfileId,
    :closedDate,
    :endDate,
    :id,
    :lockDate,
    :serviceCenter,
    :status
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      beginDate: {:string, "date-time"},
      cardManufacturingProfileId: :string,
      closedDate: {:string, "date-time"},
      endDate: {:string, "date-time"},
      id: :string,
      lockDate: {:string, "date-time"},
      serviceCenter: :string,
      status: {:enum, ["closed", "open"]}
    ]
  end
end
