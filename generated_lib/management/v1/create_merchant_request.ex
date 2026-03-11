defmodule Adyen.Management.V1.CreateMerchantRequest do
  @moduledoc """
  Provides struct and type for a CreateMerchantRequest
  """

  @type t :: %__MODULE__{
          businessLineId: String.t() | nil,
          companyId: String.t(),
          description: String.t() | nil,
          legalEntityId: String.t() | nil,
          pricingPlan: String.t() | nil,
          reference: String.t() | nil,
          salesChannels: [String.t()] | nil
        }

  defstruct [
    :businessLineId,
    :companyId,
    :description,
    :legalEntityId,
    :pricingPlan,
    :reference,
    :salesChannels
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      businessLineId: :string,
      companyId: :string,
      description: :string,
      legalEntityId: :string,
      pricingPlan: :string,
      reference: :string,
      salesChannels: [:string]
    ]
  end
end
