defmodule Adyen.Checkout.V71.PaymentMethodUPIApps do
  @moduledoc """
  Provides struct and type for a PaymentMethodUPIApps
  """

  @type t :: %__MODULE__{
          appIdentifierInfo: Adyen.Checkout.V71.AppIdentifierInfo.t() | nil,
          id: String.t(),
          name: String.t()
        }

  defstruct [:appIdentifierInfo, :id, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [appIdentifierInfo: {Adyen.Checkout.V71.AppIdentifierInfo, :t}, id: :string, name: :string]
  end
end
