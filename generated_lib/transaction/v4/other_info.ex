defmodule Adyen.Transaction.V4.OtherInfo do
  @moduledoc """
  Provides struct and type for a OtherInfo
  """

  @type t :: %__MODULE__{
          descriptionOfIssue: String.t(),
          subType: String.t(),
          whatWasPurchased: String.t()
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
