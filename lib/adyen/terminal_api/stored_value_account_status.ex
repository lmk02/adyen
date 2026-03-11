defmodule Adyen.TerminalAPI.StoredValueAccountStatus do
  @moduledoc """
  Provides struct and type for a StoredValueAccountStatus
  """

  @type t :: %__MODULE__{
          CurrentBalance: number | nil,
          StoredValueAccountID: Adyen.TerminalAPI.StoredValueAccountID.t()
        }

  defstruct [:CurrentBalance, :StoredValueAccountID]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [CurrentBalance: :number, StoredValueAccountID: {Adyen.TerminalAPI.StoredValueAccountID, :t}]
  end
end
