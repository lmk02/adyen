defmodule Adyen.Transfer.V4.TransferNotificationValidationFact do
  @moduledoc """
  Provides struct and type for a TransferNotificationValidationFact
  """

  @type t :: %__MODULE__{result: String.t() | nil, type: String.t() | nil}

  defstruct [:result, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [result: :string, type: :string]
  end
end
