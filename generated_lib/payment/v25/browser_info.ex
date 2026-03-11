defmodule Adyen.Payment.V25.BrowserInfo do
  @moduledoc """
  Provides struct and type for a BrowserInfo
  """

  @type t :: %__MODULE__{acceptHeader: String.t(), userAgent: String.t()}

  defstruct [:acceptHeader, :userAgent]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [acceptHeader: :string, userAgent: :string]
  end
end
