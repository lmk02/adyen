defmodule Adyen.Checkout.V49.ApplePaySessionRequest do
  @moduledoc """
  Provides struct and type for a ApplePaySessionRequest
  """

  @type t :: %__MODULE__{
          displayName: String.t(),
          domainName: String.t(),
          merchantIdentifier: String.t()
        }

  defstruct [:displayName, :domainName, :merchantIdentifier]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [displayName: :string, domainName: :string, merchantIdentifier: :string]
  end
end
