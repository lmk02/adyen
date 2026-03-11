defmodule Adyen.Checkout.V70.CheckoutOutgoingForwardRequest do
  @moduledoc """
  Provides struct and type for a CheckoutOutgoingForwardRequest
  """

  @type t :: %__MODULE__{
          body: String.t(),
          credentials: String.t() | nil,
          headers: map | nil,
          httpMethod: String.t(),
          urlSuffix: String.t() | nil
        }

  defstruct [:body, :credentials, :headers, :httpMethod, :urlSuffix]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      body: :string,
      credentials: :string,
      headers: :map,
      httpMethod: {:enum, ["post", "put", "patch"]},
      urlSuffix: :string
    ]
  end
end
