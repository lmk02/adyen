defmodule Adyen.A2APayments.V1.Href do
  @moduledoc """
  Provides struct and type for a Href
  """

  @type t :: %__MODULE__{href: String.t()}

  defstruct [:href]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [href: :string]
  end
end
