defmodule Adyen.LegalEntity.V1.IdentificationData do
  @moduledoc """
  Provides struct and type for a IdentificationData
  """

  @type t :: %__MODULE__{
          cardNumber: String.t() | nil,
          expiryDate: String.t() | nil,
          issuerCountry: String.t() | nil,
          issuerState: String.t() | nil,
          nationalIdExempt: boolean | nil,
          number: String.t() | nil,
          type: String.t()
        }

  defstruct [
    :cardNumber,
    :expiryDate,
    :issuerCountry,
    :issuerState,
    :nationalIdExempt,
    :number,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cardNumber: :string,
      expiryDate: :string,
      issuerCountry: :string,
      issuerState: :string,
      nationalIdExempt: :boolean,
      number: :string,
      type: {:const, "nationalIdNumber"}
    ]
  end
end
