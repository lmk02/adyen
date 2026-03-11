defmodule Adyen.Payment.V30.Card do
  @moduledoc """
  Provides struct and type for a Card
  """

  @type t :: %__MODULE__{
          cvc: String.t() | nil,
          expiryMonth: String.t() | nil,
          expiryYear: String.t() | nil,
          holderName: String.t() | nil,
          issueNumber: String.t() | nil,
          number: String.t() | nil,
          startMonth: String.t() | nil,
          startYear: String.t() | nil
        }

  defstruct [
    :cvc,
    :expiryMonth,
    :expiryYear,
    :holderName,
    :issueNumber,
    :number,
    :startMonth,
    :startYear
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cvc: :string,
      expiryMonth: :string,
      expiryYear: :string,
      holderName: :string,
      issueNumber: :string,
      number: :string,
      startMonth: :string,
      startYear: :string
    ]
  end
end
