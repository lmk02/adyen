defmodule Adyen.LegalEntity.V4.PLLocalAccountIdentification do
  @moduledoc """
  Provides struct and type for a PLLocalAccountIdentification
  """

  @type t :: %__MODULE__{accountNumber: String.t(), type: String.t()}

  defstruct [:accountNumber, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountNumber: :string, type: {:const, "plLocal"}]
  end
end
