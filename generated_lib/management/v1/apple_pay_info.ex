defmodule Adyen.Management.V1.ApplePayInfo do
  @moduledoc """
  Provides struct and type for a ApplePayInfo
  """

  @type t :: %__MODULE__{domains: [String.t()]}

  (
    @derive Jason.Encoder
    defstruct [:domains]
  )

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [domains: [:string]]
  end
end
