defmodule Adyen.NotificationConfiguration.V1.ExchangeMessage do
  @moduledoc """
  Provides struct and type for a ExchangeMessage
  """

  @type t :: %__MODULE__{messageCode: String.t() | nil, messageDescription: String.t() | nil}

  defstruct [:messageCode, :messageDescription]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [messageCode: :string, messageDescription: :string]
  end
end
