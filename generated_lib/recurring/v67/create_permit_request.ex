defmodule Adyen.Recurring.V67.CreatePermitRequest do
  @moduledoc """
  Provides struct and type for a CreatePermitRequest
  """

  @type t :: %__MODULE__{
          merchantAccount: String.t(),
          permits: [Adyen.Recurring.V67.Permit.t()],
          recurringDetailReference: String.t(),
          shopperReference: String.t()
        }

  defstruct [:merchantAccount, :permits, :recurringDetailReference, :shopperReference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      merchantAccount: :string,
      permits: [{Adyen.Recurring.V67.Permit, :t}],
      recurringDetailReference: :string,
      shopperReference: :string
    ]
  end
end
