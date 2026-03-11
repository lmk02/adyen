defmodule Adyen.SessionAuthentication.AuthenticationSessionRequest do
  @moduledoc """
  Provides struct and type for a AuthenticationSessionRequest
  """

  @type t :: %__MODULE__{
          allowOrigin: String.t(),
          policy: Adyen.SessionAuthentication.Policy.t(),
          product: String.t()
        }

  defstruct [:allowOrigin, :policy, :product]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      allowOrigin: :string,
      policy: {Adyen.SessionAuthentication.Policy, :t},
      product: {:enum, ["onboarding", "platform", "bank"]}
    ]
  end
end
