defmodule Adyen.Checkout.V40.ExternalPlatform do
  @moduledoc """
  Provides struct and type for a ExternalPlatform
  """

  @type t :: %__MODULE__{
          integrator: String.t() | nil,
          name: String.t() | nil,
          version: String.t() | nil
        }

  defstruct [:integrator, :name, :version]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [integrator: :string, name: :string, version: :string]
  end
end
