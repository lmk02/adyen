defmodule Adyen.Transfers.TransferView do
  @moduledoc """
  Provides struct and type for a TransferView
  """

  alias Adyen.Transfers.BankCategoryData
  alias Adyen.Transfers.InternalCategoryData
  alias Adyen.Transfers.IssuedCard
  alias Adyen.Transfers.PlatformPayment

  @type t :: %__MODULE__{
          categoryData:
            BankCategoryData.t()
            | InternalCategoryData.t()
            | IssuedCard.t()
            | PlatformPayment.t()
            | nil,
          id: String.t() | nil,
          reference: String.t()
        }

  defstruct [:categoryData, :id, :reference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      categoryData:
        {:union,
         [
           {BankCategoryData, :t},
           {InternalCategoryData, :t},
           {IssuedCard, :t},
           {PlatformPayment, :t}
         ]},
      id: :string,
      reference: :string
    ]
  end
end
