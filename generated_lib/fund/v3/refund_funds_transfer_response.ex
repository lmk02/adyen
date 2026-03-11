defmodule Adyen.Fund.V3.RefundFundsTransferResponse do
  @moduledoc """
  Provides struct and type for a RefundFundsTransferResponse
  """

  @type t :: %__MODULE__{
          merchantReference: String.t() | nil,
          message: String.t() | nil,
          originalReference: String.t() | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          submittedAsync: boolean | nil
        }

  defstruct [
    :merchantReference,
    :message,
    :originalReference,
    :pspReference,
    :resultCode,
    :submittedAsync
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      merchantReference: :string,
      message: :string,
      originalReference: :string,
      pspReference: :string,
      resultCode: :string,
      submittedAsync: :boolean
    ]
  end
end
