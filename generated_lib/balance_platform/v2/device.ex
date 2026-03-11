defmodule Adyen.BalancePlatform.V2.Device do
  @moduledoc """
  Provides struct and type for a Device
  """

  @type t :: %__MODULE__{
          id: String.t() | nil,
          name: String.t() | nil,
          paymentInstrumentId: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:id, :name, :paymentInstrumentId, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      name: :string,
      paymentInstrumentId: :string,
      type: {:enum, ["ios", "android", "browser"]}
    ]
  end
end
