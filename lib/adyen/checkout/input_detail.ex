defmodule Adyen.Checkout.InputDetail do
  @moduledoc """
  Provides struct and type for a InputDetail
  """

  alias Adyen.Checkout.Item
  alias Adyen.Checkout.SubInputDetail

  @type t :: %__MODULE__{
          configuration: map | nil,
          details: [SubInputDetail.t()] | nil,
          inputDetails: [SubInputDetail.t()] | nil,
          itemSearchUrl: String.t() | nil,
          items: [Item.t()] | nil,
          key: String.t() | nil,
          optional: boolean | nil,
          type: String.t() | nil,
          value: String.t() | nil
        }

  defstruct [
    :configuration,
    :details,
    :inputDetails,
    :itemSearchUrl,
    :items,
    :key,
    :optional,
    :type,
    :value
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      configuration: :map,
      details: [{SubInputDetail, :t}],
      inputDetails: [{SubInputDetail, :t}],
      itemSearchUrl: :string,
      items: [{Item, :t}],
      key: :string,
      optional: :boolean,
      type: :string,
      value: :string
    ]
  end
end
