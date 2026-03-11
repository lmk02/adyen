defmodule Adyen.Management.V1.SodexoInfo do
  @moduledoc """
  Provides struct and type for a SodexoInfo
  """

  @type t :: %__MODULE__{merchantContactPhone: String.t()}

  defstruct [:merchantContactPhone]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [merchantContactPhone: :string]
  end
end
