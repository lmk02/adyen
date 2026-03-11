defmodule Adyen.Transfer.V4.TransferView do
  @moduledoc """
  Provides struct and type for a TransferView
  """

  @type t :: %__MODULE__{
          categoryData:
            Adyen.Transfer.V4.BankCategoryData.t()
            | Adyen.Transfer.V4.InternalCategoryData.t()
            | Adyen.Transfer.V4.IssuedCard.t()
            | Adyen.Transfer.V4.PlatformPayment.t()
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
           {Adyen.Transfer.V4.BankCategoryData, :t},
           {Adyen.Transfer.V4.InternalCategoryData, :t},
           {Adyen.Transfer.V4.IssuedCard, :t},
           {Adyen.Transfer.V4.PlatformPayment, :t}
         ]},
      id: :string,
      reference: :string
    ]
  end
end
