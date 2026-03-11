defmodule Adyen.Management.CardholderReceipt do
  @moduledoc """
  Provides struct and type for a CardholderReceipt
  """

  @type t :: %__MODULE__{headerForAuthorizedReceipt: String.t() | nil}

  defstruct [:headerForAuthorizedReceipt]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [headerForAuthorizedReceipt: :string]
  end
end
