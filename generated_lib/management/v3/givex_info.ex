defmodule Adyen.Management.V3.GivexInfo do
  @moduledoc """
  Provides struct and type for a GivexInfo
  """

  @type t :: %__MODULE__{
          currencyCode: String.t(),
          password: String.t(),
          paymentFlow: String.t(),
          username: String.t()
        }

  defstruct [:currencyCode, :password, :paymentFlow, :username]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      currencyCode: :string,
      password: :string,
      paymentFlow: {:enum, ["Ecommerce", "POS"]},
      username: :string
    ]
  end
end
