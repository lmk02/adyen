defmodule Adyen.Payout.V68.StoreDetailAndSubmitResponse do
  @moduledoc """
  Provides struct and type for a StoreDetailAndSubmitResponse
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          pspReference: String.t(),
          refusalReason: String.t() | nil,
          resultCode: String.t()
        }

  defstruct [:additionalData, :pspReference, :refusalReason, :resultCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [additionalData: :map, pspReference: :string, refusalReason: :string, resultCode: :string]
  end
end
