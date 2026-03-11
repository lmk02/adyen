defmodule Adyen.SessionAuthentication.V1.Resource do
  @moduledoc """
  Provides struct and type for a Resource
  """

  @type t :: %__MODULE__{type: String.t() | nil}

  defstruct [:type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      type:
        {:enum,
         [
           "legalEntity",
           "balanceAccount",
           "accountHolder",
           "merchantAccount",
           "paymentInstrument"
         ]}
    ]
  end
end
