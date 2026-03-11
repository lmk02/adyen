defmodule Adyen.Account.V3.UltimateParentCompany do
  @moduledoc """
  Provides struct and type for a UltimateParentCompany
  """

  @type t :: %__MODULE__{
          address: Adyen.Account.V3.ViasAddress.t() | nil,
          businessDetails: Adyen.Account.V3.UltimateParentCompanyBusinessDetails.t() | nil,
          ultimateParentCompanyCode: String.t() | nil
        }

  defstruct [:address, :businessDetails, :ultimateParentCompanyCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {Adyen.Account.V3.ViasAddress, :t},
      businessDetails: {Adyen.Account.V3.UltimateParentCompanyBusinessDetails, :t},
      ultimateParentCompanyCode: :string
    ]
  end
end
