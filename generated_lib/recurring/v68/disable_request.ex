defmodule Adyen.Recurring.V68.DisableRequest do
  @moduledoc """
  Provides struct and type for a DisableRequest
  """

  @type t :: %__MODULE__{
          contract: String.t() | nil,
          merchantAccount: String.t(),
          recurringDetailReference: String.t() | nil,
          shopperReference: String.t()
        }

  defstruct [:contract, :merchantAccount, :recurringDetailReference, :shopperReference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      contract: :string,
      merchantAccount: :string,
      recurringDetailReference: :string,
      shopperReference: :string
    ]
  end
end
