defmodule Adyen.Account.V4.ShareholderContactWrapper do
  @moduledoc """
  Provides struct and type for a ShareholderContactWrapper
  """

  @type t :: %__MODULE__{ShareholderContact: Adyen.Account.V4.ShareholderContact.t() | nil}

  defstruct [:ShareholderContact]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [ShareholderContact: {Adyen.Account.V4.ShareholderContact, :t}]
  end
end
