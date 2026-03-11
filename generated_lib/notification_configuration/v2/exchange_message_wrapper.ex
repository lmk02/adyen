defmodule Adyen.NotificationConfiguration.V2.ExchangeMessageWrapper do
  @moduledoc """
  Provides struct and type for a ExchangeMessageWrapper
  """

  @type t :: %__MODULE__{
          ExchangeMessage: Adyen.NotificationConfiguration.V2.ExchangeMessage.t() | nil
        }

  defstruct [:ExchangeMessage]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [ExchangeMessage: {Adyen.NotificationConfiguration.V2.ExchangeMessage, :t}]
  end
end
