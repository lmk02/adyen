defmodule Adyen.Management.V1.Gratuity do
  @moduledoc """
  Provides struct and type for a Gratuity
  """

  @type t :: %__MODULE__{
          allowCustomAmount: boolean | nil,
          currency: String.t() | nil,
          predefinedTipEntries: [String.t()] | nil,
          usePredefinedTipEntries: boolean | nil
        }

  defstruct [:allowCustomAmount, :currency, :predefinedTipEntries, :usePredefinedTipEntries]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      allowCustomAmount: :boolean,
      currency: :string,
      predefinedTipEntries: [:string],
      usePredefinedTipEntries: :boolean
    ]
  end
end
