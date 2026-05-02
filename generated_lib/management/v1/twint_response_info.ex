defmodule Adyen.Management.V1.TwintResponseInfo do
  @moduledoc """
  Provides struct and type for a TwintResponseInfo
  """

  @type t :: %__MODULE__{logo: String.t()}

  defstruct [:logo]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [logo: :string]
  end
end
