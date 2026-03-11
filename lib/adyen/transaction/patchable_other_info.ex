defmodule Adyen.Transaction.PatchableOtherInfo do
  @moduledoc """
  Provides struct and type for a PatchableOtherInfo
  """

  @type t :: %__MODULE__{
          descriptionOfIssue: String.t() | nil,
          subType: String.t() | nil,
          whatWasPurchased: String.t() | nil
        }

  defstruct [:descriptionOfIssue, :subType, :whatWasPurchased]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      descriptionOfIssue: :string,
      subType:
        {:enum,
         [
           "atmDispute",
           "cancelledGoodsServices",
           "cancelledRecurring",
           "creditNotProcessed",
           "counterfeit",
           "notAsDescribed"
         ]},
      whatWasPurchased: {:enum, ["goods", "services"]}
    ]
  end
end
