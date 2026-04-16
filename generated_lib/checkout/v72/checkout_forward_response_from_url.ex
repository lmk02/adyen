defmodule Adyen.Checkout.V72.CheckoutForwardResponseFromUrl do
  @moduledoc """
  Provides struct and type for a CheckoutForwardResponseFromUrl
  """

  @type t :: %__MODULE__{body: String.t() | nil, headers: map | nil, status: integer | nil}

  defstruct [:body, :headers, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [body: :string, headers: :map, status: {:integer, "int32"}]
  end
end
