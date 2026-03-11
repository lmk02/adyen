defmodule Adyen.Recurring.V68.DisableResult do
  @moduledoc """
  Provides struct and type for a DisableResult
  """

  @type t :: %__MODULE__{response: String.t() | nil}

  defstruct [:response]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [response: :string]
  end
end
