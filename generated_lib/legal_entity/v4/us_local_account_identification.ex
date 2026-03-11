defmodule Adyen.LegalEntity.V4.USLocalAccountIdentification do
  @moduledoc """
  Provides struct and type for a USLocalAccountIdentification
  """

  @type t :: %__MODULE__{
          accountNumber: String.t(),
          accountType: String.t() | nil,
          routingNumber: String.t(),
          type: String.t()
        }

  defstruct [:accountNumber, :accountType, :routingNumber, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountNumber: :string,
      accountType: {:enum, ["checking", "savings"]},
      routingNumber: :string,
      type: {:const, "usLocal"}
    ]
  end
end
