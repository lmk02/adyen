defmodule Adyen.Checkout.V50.ShopperInteractionDevice do
  @moduledoc """
  Provides struct and type for a ShopperInteractionDevice
  """

  @type t :: %__MODULE__{
          locale: String.t() | nil,
          os: String.t() | nil,
          osVersion: String.t() | nil
        }

  defstruct [:locale, :os, :osVersion]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [locale: :string, os: :string, osVersion: :string]
  end
end
