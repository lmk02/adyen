defmodule Adyen.LegalEntity.Support do
  @moduledoc """
  Provides struct and type for a Support
  """

  @type t :: %__MODULE__{email: String.t() | nil, phone: Adyen.LegalEntity.PhoneNumber.t() | nil}

  defstruct [:email, :phone]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [email: :string, phone: {Adyen.LegalEntity.PhoneNumber, :t}]
  end
end
