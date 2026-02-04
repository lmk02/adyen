defmodule Adyen.Checkout.AuthenticationData do
  @moduledoc """
  Provides struct and type for a AuthenticationData
  """

  @type t :: %__MODULE__{
          attemptAuthentication: String.t() | nil,
          authenticationOnly: boolean | nil,
          threeDSRequestData: Adyen.Checkout.ThreeDSRequestData.t() | nil
        }

  defstruct [:attemptAuthentication, :authenticationOnly, :threeDSRequestData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      attemptAuthentication: {:enum, ["always", "never"]},
      authenticationOnly: :boolean,
      threeDSRequestData: {Adyen.Checkout.ThreeDSRequestData, :t}
    ]
  end
end
