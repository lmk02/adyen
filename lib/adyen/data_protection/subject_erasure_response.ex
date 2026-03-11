defmodule Adyen.DataProtection.SubjectErasureResponse do
  @moduledoc """
  Provides struct and type for a SubjectErasureResponse
  """

  @type t :: %__MODULE__{result: String.t() | nil}

  defstruct [:result]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      result:
        {:enum,
         ["ACTIVE_RECURRING_TOKEN_EXISTS", "ALREADY_PROCESSED", "PAYMENT_NOT_FOUND", "SUCCESS"]}
    ]
  end
end
