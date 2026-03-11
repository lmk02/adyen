defmodule Adyen.BalancePlatform.V2.Authentication do
  @moduledoc """
  Provides struct and type for a Authentication
  """

  @type t :: %__MODULE__{
          email: String.t() | nil,
          password: String.t() | nil,
          phone: Adyen.BalancePlatform.V2.Phone.t() | nil
        }

  defstruct [:email, :password, :phone]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [email: :string, password: :string, phone: {Adyen.BalancePlatform.V2.Phone, :t}]
  end
end
