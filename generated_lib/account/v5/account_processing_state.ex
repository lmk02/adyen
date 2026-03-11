defmodule Adyen.Account.V5.AccountProcessingState do
  @moduledoc """
  Provides struct and type for a AccountProcessingState
  """

  @type t :: %__MODULE__{
          disableReason: String.t() | nil,
          disabled: boolean | nil,
          processedFrom: Adyen.Account.V5.Amount.t() | nil,
          processedTo: Adyen.Account.V5.Amount.t() | nil,
          tierNumber: integer | nil
        }

  defstruct [:disableReason, :disabled, :processedFrom, :processedTo, :tierNumber]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      disableReason: :string,
      disabled: :boolean,
      processedFrom: {Adyen.Account.V5.Amount, :t},
      processedTo: {Adyen.Account.V5.Amount, :t},
      tierNumber: {:integer, "int32"}
    ]
  end
end
