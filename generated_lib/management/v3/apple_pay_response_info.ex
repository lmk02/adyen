defmodule Adyen.Management.V3.ApplePayResponseInfo do
  @moduledoc """
  Provides struct and type for a ApplePayResponseInfo
  """

  @type t :: %__MODULE__{domains: [String.t()]}

  defstruct [:domains]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [domains: [:string]]
  end
end
