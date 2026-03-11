defmodule Adyen.Accounts.UltimateParentCompany do
  @moduledoc """
  Provides struct and type for a UltimateParentCompany
  """

  @type t :: %__MODULE__{
          address: Adyen.Accounts.ViasAddress.t() | nil,
          businessDetails: Adyen.Accounts.UltimateParentCompanyBusinessDetails.t() | nil,
          ultimateParentCompanyCode: String.t() | nil
        }

  defstruct [:address, :businessDetails, :ultimateParentCompanyCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {Adyen.Accounts.ViasAddress, :t},
      businessDetails: {Adyen.Accounts.UltimateParentCompanyBusinessDetails, :t},
      ultimateParentCompanyCode: :string
    ]
  end
end
