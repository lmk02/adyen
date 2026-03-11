defmodule Adyen.Management.V3.Opi do
  @moduledoc """
  Provides struct and type for a Opi
  """

  @type t :: %__MODULE__{
          enablePayAtTable: boolean | nil,
          payAtTableStoreNumber: String.t() | nil,
          payAtTableURL: String.t() | nil
        }

  defstruct [:enablePayAtTable, :payAtTableStoreNumber, :payAtTableURL]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [enablePayAtTable: :boolean, payAtTableStoreNumber: :string, payAtTableURL: :string]
  end
end
