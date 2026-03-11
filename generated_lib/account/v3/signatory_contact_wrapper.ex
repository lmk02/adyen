defmodule Adyen.Account.V3.SignatoryContactWrapper do
  @moduledoc """
  Provides struct and type for a SignatoryContactWrapper
  """

  @type t :: %__MODULE__{SignatoryContact: Adyen.Account.V3.SignatoryContact.t() | nil}

  defstruct [:SignatoryContact]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [SignatoryContact: {Adyen.Account.V3.SignatoryContact, :t}]
  end
end
