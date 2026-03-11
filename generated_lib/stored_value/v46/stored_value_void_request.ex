defmodule Adyen.StoredValue.V46.StoredValueVoidRequest do
  @moduledoc """
  Provides struct and type for a StoredValueVoidRequest
  """

  @type t :: %__MODULE__{
          merchantAccount: String.t(),
          originalReference: String.t(),
          reference: String.t() | nil,
          store: String.t() | nil,
          tenderReference: String.t() | nil,
          uniqueTerminalId: String.t() | nil
        }

  defstruct [
    :merchantAccount,
    :originalReference,
    :reference,
    :store,
    :tenderReference,
    :uniqueTerminalId
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      merchantAccount: :string,
      originalReference: :string,
      reference: :string,
      store: :string,
      tenderReference: :string,
      uniqueTerminalId: :string
    ]
  end
end
