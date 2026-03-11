defmodule Adyen.Payments.SubMerchant do
  @moduledoc """
  Provides struct and type for a SubMerchant
  """

  @type t :: %__MODULE__{
          city: String.t() | nil,
          country: String.t() | nil,
          mcc: String.t() | nil,
          name: String.t() | nil,
          taxId: String.t() | nil
        }

  defstruct [:city, :country, :mcc, :name, :taxId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [city: :string, country: :string, mcc: :string, name: :string, taxId: :string]
  end
end
