defmodule Adyen.Management.V1.BillingEntity do
  @moduledoc """
  Provides struct and type for a BillingEntity
  """

  @type t :: %__MODULE__{
          address: Adyen.Management.V1.Address.t() | nil,
          email: String.t() | nil,
          id: String.t() | nil,
          name: String.t() | nil,
          taxId: String.t() | nil
        }

  defstruct [:address, :email, :id, :name, :taxId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {Adyen.Management.V1.Address, :t},
      email: :string,
      id: :string,
      name: :string,
      taxId: :string
    ]
  end
end
