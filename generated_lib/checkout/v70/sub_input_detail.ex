defmodule Adyen.Checkout.V70.SubInputDetail do
  @moduledoc """
  Provides struct and type for a SubInputDetail
  """

  @type t :: %__MODULE__{
          configuration: map | nil,
          items: [Adyen.Checkout.V70.Item.t()] | nil,
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
      items: [{Adyen.Checkout.V70.Item, :t}],
      key: :string,
      optional: :boolean,
      type: :string,
      value: :string
    ]
  end
end
