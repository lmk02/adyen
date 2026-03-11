defmodule Adyen.Management.V3.BcmcInfo do
  @moduledoc """
  Provides struct and type for a BcmcInfo
  """

  @type t :: %__MODULE__{enableBcmcMobile: boolean | nil}

  defstruct [:enableBcmcMobile]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [enableBcmcMobile: :boolean]
  end
end
