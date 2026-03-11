defmodule Adyen.Account.V5.DeleteLegalArrangementRequest do
  @moduledoc """
  Provides struct and type for a DeleteLegalArrangementRequest
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t(),
          legalArrangements: [Adyen.Account.V5.LegalArrangementRequest.t()]
        }

  defstruct [:accountHolderCode, :legalArrangements]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderCode: :string,
      legalArrangements: [{Adyen.Account.V5.LegalArrangementRequest, :t}]
    ]
  end
end
