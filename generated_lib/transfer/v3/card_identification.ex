defmodule Adyen.Transfer.V3.CardIdentification do
  @moduledoc """
  Provides struct and type for a CardIdentification
  """

  @type t :: %__MODULE__{
          expiryMonth: String.t() | nil,
          expiryYear: String.t() | nil,
          issueNumber: String.t() | nil,
          number: String.t() | nil,
          startMonth: String.t() | nil,
          startYear: String.t() | nil,
          storedPaymentMethodId: String.t() | nil
        }

  defstruct [
    :expiryMonth,
    :expiryYear,
    :issueNumber,
    :number,
    :startMonth,
    :startYear,
    :storedPaymentMethodId
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      expiryMonth: :string,
      expiryYear: :string,
      issueNumber: :string,
      number: :string,
      startMonth: :string,
      startYear: :string,
      storedPaymentMethodId: :string
    ]
  end
end
