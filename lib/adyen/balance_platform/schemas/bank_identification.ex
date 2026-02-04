defmodule Adyen.BalancePlatform.BankIdentification do
  @moduledoc """
  Provides struct and type for a BankIdentification
  """

  @type t :: %__MODULE__{
          country: String.t() | nil,
          identification: String.t() | nil,
          identificationType: String.t() | nil
        }

  defstruct [:country, :identification, :identificationType]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      country: :string,
      identification: :string,
      identificationType: {:enum, ["bic", "iban", "routingNumber", "sortCode"]}
    ]
  end
end
