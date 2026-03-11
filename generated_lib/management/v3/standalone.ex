defmodule Adyen.Management.V3.Standalone do
  @moduledoc """
  Provides struct and type for a Standalone
  """

  @type t :: %__MODULE__{
          currencyCode: String.t() | nil,
          enableGratuities: boolean | nil,
          enableStandalone: boolean | nil
        }

  defstruct [:currencyCode, :enableGratuities, :enableStandalone]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [currencyCode: :string, enableGratuities: :boolean, enableStandalone: :boolean]
  end
end
