defmodule Adyen.LegalEntity.V3.NZLocalAccountIdentification do
  @moduledoc """
  Provides struct and type for a NZLocalAccountIdentification
  """

  @type t :: %__MODULE__{accountNumber: String.t(), type: String.t()}

  defstruct [:accountNumber, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountNumber: :string, type: {:const, "nzLocal"}]
  end
end
