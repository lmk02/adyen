defmodule Adyen.Account.V5.LegalArrangementRequest do
  @moduledoc """
  Provides struct and type for a LegalArrangementRequest
  """

  @type t :: %__MODULE__{
          legalArrangementCode: String.t(),
          legalArrangementEntityCodes: [String.t()] | nil
        }

  defstruct [:legalArrangementCode, :legalArrangementEntityCodes]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [legalArrangementCode: :string, legalArrangementEntityCodes: [:string]]
  end
end
