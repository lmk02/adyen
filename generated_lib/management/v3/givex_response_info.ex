defmodule Adyen.Management.V3.GivexResponseInfo do
  @moduledoc """
  Provides struct and type for a GivexResponseInfo
  """

  @type t :: %__MODULE__{
          currencyCode: String.t() | nil,
          password: String.t() | nil,
          paymentFlow: String.t() | nil,
          username: String.t() | nil
        }

  defstruct [:currencyCode, :password, :paymentFlow, :username]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [currencyCode: :string, password: :string, paymentFlow: :string, username: :string]
  end
end
