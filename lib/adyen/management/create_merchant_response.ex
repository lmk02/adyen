defmodule Adyen.Management.CreateMerchantResponse do
  @moduledoc """
  Provides struct and type for a CreateMerchantResponse
  """

  @type t :: %__MODULE__{
          businessLineId: String.t() | nil,
          companyId: String.t() | nil,
          description: String.t() | nil,
          id: String.t() | nil,
          legalEntityId: String.t() | nil,
          pricingPlan: String.t() | nil,
          reference: String.t() | nil
        }

  defstruct [
    :businessLineId,
    :companyId,
    :description,
    :id,
    :legalEntityId,
    :pricingPlan,
    :reference
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      businessLineId: :string,
      companyId: :string,
      description: :string,
      id: :string,
      legalEntityId: :string,
      pricingPlan: :string,
      reference: :string
    ]
  end
end
