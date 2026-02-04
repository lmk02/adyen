defmodule Adyen.Transfers.ExternalReason do
  @moduledoc """
  Provides struct and type for a ExternalReason
  """

  @type t :: %__MODULE__{
          code: String.t() | nil,
          description: String.t() | nil,
          namespace: String.t() | nil
        }

  defstruct [:code, :description, :namespace]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [code: :string, description: :string, namespace: :string]
  end
end
