defmodule Adyen.Management.V1.StoreAndForward do
  @moduledoc """
  Provides struct and type for a StoreAndForward
  """

  @type t :: %__MODULE__{
          maxAmount: [Adyen.Management.V1.MinorUnitsMonetaryValue.t()] | nil,
          maxPayments: integer | nil,
          supportedCardTypes: Adyen.Management.V1.SupportedCardTypes.t() | nil
        }

  defstruct [:maxAmount, :maxPayments, :supportedCardTypes]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      maxAmount: [{Adyen.Management.V1.MinorUnitsMonetaryValue, :t}],
      maxPayments: {:integer, "int32"},
      supportedCardTypes: {Adyen.Management.V1.SupportedCardTypes, :t}
    ]
  end
end
