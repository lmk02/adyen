defmodule Adyen.Management.TestWebhookResponse do
  @moduledoc """
  Provides struct and type for a TestWebhookResponse
  """

  @type t :: %__MODULE__{data: [Adyen.Management.TestOutput.t()] | nil}

  defstruct [:data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: [{Adyen.Management.TestOutput, :t}]]
  end
end
