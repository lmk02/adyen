defmodule Adyen.Accounts.DeleteLegalArrangementRequest do
  @moduledoc """
  Provides struct and type for a DeleteLegalArrangementRequest
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t(),
          legalArrangements: [Adyen.Accounts.LegalArrangementRequest.t()]
        }

  defstruct [:accountHolderCode, :legalArrangements]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderCode: :string,
      legalArrangements: [{Adyen.Accounts.LegalArrangementRequest, :t}]
    ]
  end
end
