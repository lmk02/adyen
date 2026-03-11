defmodule Adyen.Fund.V5.RefundFundsTransferResponse do
  @moduledoc """
  Provides struct and type for a RefundFundsTransferResponse
  """

  @type t :: %__MODULE__{
          invalidFields: [Adyen.Fund.V5.ErrorFieldType.t()] | nil,
          merchantReference: String.t() | nil,
          message: String.t() | nil,
          originalReference: String.t() | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [
    :invalidFields,
    :merchantReference,
    :message,
    :originalReference,
    :pspReference,
    :resultCode
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      invalidFields: [{Adyen.Fund.V5.ErrorFieldType, :t}],
      merchantReference: :string,
      message: :string,
      originalReference: :string,
      pspReference: :string,
      resultCode: :string
    ]
  end
end
