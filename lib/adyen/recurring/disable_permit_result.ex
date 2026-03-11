defmodule Adyen.Recurring.DisablePermitResult do
  @moduledoc """
  Provides struct and type for a DisablePermitResult
  """

  @type t :: %__MODULE__{pspReference: String.t() | nil, status: String.t() | nil}

  defstruct [:pspReference, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [pspReference: :string, status: :string]
  end
end
