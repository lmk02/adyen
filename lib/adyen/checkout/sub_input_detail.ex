defmodule Adyen.Checkout.SubInputDetail do
  @moduledoc """
  Provides struct and type for a SubInputDetail
  """

  alias Adyen.Checkout.Item

  @type t :: %__MODULE__{
          configuration: map | nil,
          items: [Item.t()] | nil,
          key: String.t() | nil,
          optional: boolean | nil,
          type: String.t() | nil,
          value: String.t() | nil
        }

  defstruct [:configuration, :items, :key, :optional, :type, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      configuration: :map,
      items: [{Item, :t}],
      key: :string,
      optional: :boolean,
      type: :string,
      value: :string
    ]
  end
end
