defmodule Adyen.Transfers.TransferView do
  @moduledoc """
  Provides struct and type for a TransferView
  """

  @type t :: %__MODULE__{
          categoryData:
            Adyen.Transfers.BankCategoryData.t()
            | Adyen.Transfers.InternalCategoryData.t()
            | Adyen.Transfers.IssuedCard.t()
            | Adyen.Transfers.PlatformPayment.t()
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
           {Adyen.Transfers.BankCategoryData, :t},
           {Adyen.Transfers.InternalCategoryData, :t},
           {Adyen.Transfers.IssuedCard, :t},
           {Adyen.Transfers.PlatformPayment, :t}
         ]},
      id: :string,
      reference: :string
    ]
  end
end
