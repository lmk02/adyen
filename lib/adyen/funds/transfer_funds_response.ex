defmodule Adyen.Funds.TransferFundsResponse do
  @moduledoc """
  Provides struct and type for a TransferFundsResponse
  """

  @type t :: %__MODULE__{
          invalidFields: [Adyen.Funds.ErrorFieldType.t()] | nil,
          merchantReference: String.t() | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [:invalidFields, :merchantReference, :pspReference, :resultCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      invalidFields: [{Adyen.Funds.ErrorFieldType, :t}],
      merchantReference: :string,
      pspReference: :string,
      resultCode: :string
    ]
  end
end
