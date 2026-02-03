defmodule Adyen.BalancePlatform.DeviceInfo do
  @moduledoc """
  Provides struct and type for a DeviceInfo
  """

  alias Adyen.BalancePlatform.PhoneInfo

  @type t :: %__MODULE__{
          formFactor: String.t() | nil,
          osName: String.t() | nil,
          phone: PhoneInfo.t() | nil
        }

  defstruct [:formFactor, :osName, :phone]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [formFactor: :string, osName: :string, phone: {PhoneInfo, :t}]
  end
end
