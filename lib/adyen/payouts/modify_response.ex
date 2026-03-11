defmodule Adyen.Payouts.ModifyResponse do
  @moduledoc """
  Provides struct and type for a ModifyResponse
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          pspReference: String.t(),
          response: String.t()
        }

  defstruct [:additionalData, :pspReference, :response]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [additionalData: :map, pspReference: :string, response: :string]
  end
end
