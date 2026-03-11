defmodule Adyen.Fund.V3.TransferFundsResponse do
  @moduledoc """
  Provides struct and type for a TransferFundsResponse
  """

  @type t :: %__MODULE__{
          merchantReference: String.t() | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          submittedAsync: boolean | nil
        }

  defstruct [:merchantReference, :pspReference, :resultCode, :submittedAsync]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      merchantReference: :string,
      pspReference: :string,
      resultCode: :string,
      submittedAsync: :boolean
    ]
  end
end
