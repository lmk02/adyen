defmodule Adyen.BalancePlatform.RegisterSCARequest do
  @moduledoc """
  Provides struct and type for a RegisterSCARequest
  """

  @type t :: %__MODULE__{
          name: String.t() | nil,
          paymentInstrumentId: String.t(),
          strongCustomerAuthentication: Adyen.BalancePlatform.DelegatedAuthenticationData.t()
        }

  defstruct [:name, :paymentInstrumentId, :strongCustomerAuthentication]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      name: :string,
      paymentInstrumentId: :string,
      strongCustomerAuthentication: {Adyen.BalancePlatform.DelegatedAuthenticationData, :t}
    ]
  end
end
