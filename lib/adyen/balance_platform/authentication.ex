defmodule Adyen.BalancePlatform.Authentication do
  @moduledoc """
  Provides struct and type for a Authentication
  """

  alias Adyen.BalancePlatform.Phone

  @type t :: %__MODULE__{
          email: String.t() | nil,
          password: String.t() | nil,
          phone: Phone.t() | nil
        }

  defstruct [:email, :password, :phone]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [email: :string, password: :string, phone: {Phone, :t}]
  end
end
