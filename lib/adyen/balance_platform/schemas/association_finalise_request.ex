defmodule Adyen.BalancePlatform.AssociationFinaliseRequest do
  @moduledoc """
  Provides struct and type for a AssociationFinaliseRequest
  """

  @type t :: %__MODULE__{
          ids: [String.t()],
          strongCustomerAuthentication:
            Adyen.BalancePlatform.AssociationDelegatedAuthenticationData.t(),
          type: String.t()
        }

  defstruct [:ids, :strongCustomerAuthentication, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      ids: [:string],
      strongCustomerAuthentication:
        {Adyen.BalancePlatform.AssociationDelegatedAuthenticationData, :t},
      type: {:const, "PaymentInstrument"}
    ]
  end
end
