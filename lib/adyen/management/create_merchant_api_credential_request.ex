defmodule Adyen.Management.CreateMerchantApiCredentialRequest do
  @moduledoc """
  Provides struct and type for a CreateMerchantApiCredentialRequest
  """

  @type t :: %__MODULE__{
          allowedOrigins: [String.t()] | nil,
          description: String.t() | nil,
          roles: [String.t()] | nil
        }

  defstruct [:allowedOrigins, :description, :roles]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [allowedOrigins: [:string], description: :string, roles: [:string]]
  end
end
