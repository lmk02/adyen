defmodule Adyen.Payment.V67.SDKEphemPubKey do
  @moduledoc """
  Provides struct and type for a SDKEphemPubKey
  """

  @type t :: %__MODULE__{
          crv: String.t() | nil,
          kty: String.t() | nil,
          x: String.t() | nil,
          y: String.t() | nil
        }

  defstruct [:crv, :kty, :x, :y]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [crv: :string, kty: :string, x: :string, y: :string]
  end
end
