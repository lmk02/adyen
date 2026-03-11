defmodule Adyen.TerminalAPI.CurrencyConversion do
  @moduledoc """
  Provides struct and type for a CurrencyConversion
  """

  @type t :: %__MODULE__{
          Commission: number | nil,
          ConvertedAmount: Adyen.TerminalAPI.ConvertedAmount.t(),
          CustomerApprovedFlag: boolean | nil,
          Declaration: String.t() | nil,
          Markup: String.t() | nil,
          Rate: String.t() | nil
        }

  defstruct [:Commission, :ConvertedAmount, :CustomerApprovedFlag, :Declaration, :Markup, :Rate]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      Commission: :number,
      ConvertedAmount: {Adyen.TerminalAPI.ConvertedAmount, :t},
      CustomerApprovedFlag: :boolean,
      Declaration: :string,
      Markup: :string,
      Rate: :string
    ]
  end
end
