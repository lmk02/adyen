defmodule Adyen.Checkout.V65.Company do
  @moduledoc """
  Provides struct and type for a Company
  """

  @type t :: %__MODULE__{
          homepage: String.t() | nil,
          name: String.t() | nil,
          registrationNumber: String.t() | nil,
          registryLocation: String.t() | nil,
          taxId: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:homepage, :name, :registrationNumber, :registryLocation, :taxId, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      homepage: :string,
      name: :string,
      registrationNumber: :string,
      registryLocation: :string,
      taxId: :string,
      type: :string
    ]
  end
end
