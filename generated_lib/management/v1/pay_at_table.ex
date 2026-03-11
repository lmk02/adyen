defmodule Adyen.Management.V1.PayAtTable do
  @moduledoc """
  Provides struct and type for a PayAtTable
  """

  @type t :: %__MODULE__{
          authenticationMethod: String.t() | nil,
          enablePayAtTable: boolean | nil,
          paymentInstrument: String.t() | nil
        }

  defstruct [:authenticationMethod, :enablePayAtTable, :paymentInstrument]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      authenticationMethod: {:enum, ["MAGSWIPE", "MKE"]},
      enablePayAtTable: :boolean,
      paymentInstrument: {:enum, ["Cash", "Card"]}
    ]
  end
end
