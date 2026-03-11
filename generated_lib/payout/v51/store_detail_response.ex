defmodule Adyen.Payout.V51.StoreDetailResponse do
  @moduledoc """
  Provides struct and type for a StoreDetailResponse
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          pspReference: String.t(),
          recurringDetailReference: String.t(),
          resultCode: String.t()
        }

  defstruct [:additionalData, :pspReference, :recurringDetailReference, :resultCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additionalData: :map,
      pspReference: :string,
      recurringDetailReference: :string,
      resultCode: :string
    ]
  end
end
