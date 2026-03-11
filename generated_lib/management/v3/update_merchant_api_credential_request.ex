defmodule Adyen.Management.V3.UpdateMerchantApiCredentialRequest do
  @moduledoc """
  Provides struct and type for a UpdateMerchantApiCredentialRequest
  """

  @type t :: %__MODULE__{
          active: boolean | nil,
          allowedOrigins: [String.t()] | nil,
          description: String.t() | nil,
          roles: [String.t()] | nil
        }

  defstruct [:active, :allowedOrigins, :description, :roles]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [active: :boolean, allowedOrigins: [:string], description: :string, roles: [:string]]
  end
end
