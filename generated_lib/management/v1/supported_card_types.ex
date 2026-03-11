defmodule Adyen.Management.V1.SupportedCardTypes do
  @moduledoc """
  Provides struct and type for a SupportedCardTypes
  """

  @type t :: %__MODULE__{
          credit: boolean | nil,
          debit: boolean | nil,
          deferredDebit: boolean | nil,
          prepaid: boolean | nil,
          unknown: boolean | nil
        }

  defstruct [:credit, :debit, :deferredDebit, :prepaid, :unknown]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      credit: :boolean,
      debit: :boolean,
      deferredDebit: :boolean,
      prepaid: :boolean,
      unknown: :boolean
    ]
  end
end
