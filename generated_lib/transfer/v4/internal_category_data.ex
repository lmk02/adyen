defmodule Adyen.Transfer.V4.InternalCategoryData do
  @moduledoc """
  Provides struct and type for a InternalCategoryData
  """

  @type t :: %__MODULE__{
          modificationMerchantReference: String.t() | nil,
          modificationPspReference: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:modificationMerchantReference, :modificationPspReference, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      modificationMerchantReference: :string,
      modificationPspReference: :string,
      type: {:const, "internal"}
    ]
  end
end
