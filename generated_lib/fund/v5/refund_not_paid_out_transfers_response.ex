defmodule Adyen.Fund.V5.RefundNotPaidOutTransfersResponse do
  @moduledoc """
  Provides struct and type for a RefundNotPaidOutTransfersResponse
  """

  @type t :: %__MODULE__{
          invalidFields: [Adyen.Fund.V5.ErrorFieldType.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [:invalidFields, :pspReference, :resultCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      invalidFields: [{Adyen.Fund.V5.ErrorFieldType, :t}],
      pspReference: :string,
      resultCode: :string
    ]
  end
end
