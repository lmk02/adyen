defmodule Adyen.Checkout.V53.CardBrandDetails do
  @moduledoc """
  Provides struct and type for a CardBrandDetails
  """

  @type t :: %__MODULE__{supported: boolean | nil, type: String.t() | nil}

  defstruct [:supported, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [supported: :boolean, type: :string]
  end
end
