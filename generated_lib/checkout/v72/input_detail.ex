defmodule Adyen.Checkout.V72.InputDetail do
  @moduledoc """
  Provides struct and type for a InputDetail
  """

  @type t :: %__MODULE__{
          configuration: map | nil,
          details: [Adyen.Checkout.V72.SubInputDetail.t()] | nil,
          inputDetails: [Adyen.Checkout.V72.SubInputDetail.t()] | nil,
          itemSearchUrl: String.t() | nil,
          items: [Adyen.Checkout.V72.Item.t()] | nil,
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
      details: [{Adyen.Checkout.V72.SubInputDetail, :t}],
      inputDetails: [{Adyen.Checkout.V72.SubInputDetail, :t}],
      itemSearchUrl: :string,
      items: [{Adyen.Checkout.V72.Item, :t}],
      key: :string,
      optional: :boolean,
      type: :string,
      value: :string
    ]
  end
end
