defmodule Adyen.Account.V5.GetTaxFormRequest do
  @moduledoc """
  Provides struct and type for a GetTaxFormRequest
  """

  @type t :: %__MODULE__{accountHolderCode: String.t(), formType: String.t(), year: integer}

  defstruct [:accountHolderCode, :formType, :year]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountHolderCode: :string, formType: :string, year: {:integer, "int32"}]
  end
end
