defmodule Adyen.Transfers.ResourceReference do
  @moduledoc """
  Provides struct and type for a ResourceReference
  """

  @type t :: %__MODULE__{
          description: String.t() | nil,
          id: String.t() | nil,
          reference: String.t() | nil
        }

  defstruct [:description, :id, :reference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [description: :string, id: :string, reference: :string]
  end
end
