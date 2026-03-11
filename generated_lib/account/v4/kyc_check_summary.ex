defmodule Adyen.Account.V4.KYCCheckSummary do
  @moduledoc """
  Provides struct and type for a KYCCheckSummary
  """

  @type t :: %__MODULE__{code: integer, description: String.t() | nil}

  defstruct [:code, :description]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [code: {:integer, "int32"}, description: :string]
  end
end
