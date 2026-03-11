defmodule Adyen.Account.V4.LegalArrangementRequestWrapper do
  @moduledoc """
  Provides struct and type for a LegalArrangementRequestWrapper
  """

  @type t :: %__MODULE__{
          LegalArrangementRequest: Adyen.Account.V4.LegalArrangementRequest.t() | nil
        }

  defstruct [:LegalArrangementRequest]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [LegalArrangementRequest: {Adyen.Account.V4.LegalArrangementRequest, :t}]
  end
end
