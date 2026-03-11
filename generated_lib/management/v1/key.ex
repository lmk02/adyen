defmodule Adyen.Management.V1.Key do
  @moduledoc """
  Provides struct and type for a Key
  """

  @type t :: %__MODULE__{
          identifier: String.t() | nil,
          passphrase: String.t() | nil,
          version: integer | nil
        }

  defstruct [:identifier, :passphrase, :version]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [identifier: :string, passphrase: :string, version: {:integer, "int32"}]
  end
end
