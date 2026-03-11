defmodule Adyen.LegalEntity.V4.RemediatingAction do
  @moduledoc """
  Provides struct and type for a RemediatingAction
  """

  @type t :: %__MODULE__{code: String.t() | nil, message: String.t() | nil}

  defstruct [:code, :message]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [code: :string, message: :string]
  end
end
