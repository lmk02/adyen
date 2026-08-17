defmodule Adyen.Checkout.V72.CheckoutSessionPatchSessionResponse do
  @moduledoc """
  Provides struct and type for a CheckoutSessionPatchSessionResponse
  """

  @type t :: %__MODULE__{sessionData: String.t() | nil}

  defstruct [:sessionData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [sessionData: :string]
  end
end
