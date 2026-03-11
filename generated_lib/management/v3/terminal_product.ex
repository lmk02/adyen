defmodule Adyen.Management.V3.TerminalProduct do
  @moduledoc """
  Provides struct and type for a TerminalProduct
  """

  @type t :: %__MODULE__{
          description: String.t() | nil,
          id: String.t() | nil,
          itemsIncluded: [String.t()] | nil,
          name: String.t() | nil,
          price: Adyen.Management.V3.TerminalProductPrice.t() | nil
        }

  defstruct [:description, :id, :itemsIncluded, :name, :price]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      description: :string,
      id: :string,
      itemsIncluded: [:string],
      name: :string,
      price: {Adyen.Management.V3.TerminalProductPrice, :t}
    ]
  end
end
