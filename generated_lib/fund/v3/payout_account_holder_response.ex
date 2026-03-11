defmodule Adyen.Fund.V3.PayoutAccountHolderResponse do
  @moduledoc """
  Provides struct and type for a PayoutAccountHolderResponse
  """

  @type t :: %__MODULE__{
          bankAccountUUID: String.t() | nil,
          merchantReference: String.t() | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          submittedAsync: boolean | nil
        }

  defstruct [:bankAccountUUID, :merchantReference, :pspReference, :resultCode, :submittedAsync]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bankAccountUUID: :string,
      merchantReference: :string,
      pspReference: :string,
      resultCode: :string,
      submittedAsync: :boolean
    ]
  end
end
