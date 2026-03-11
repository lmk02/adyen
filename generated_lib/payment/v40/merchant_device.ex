defmodule Adyen.Payment.V40.MerchantDevice do
  @moduledoc """
  Provides struct and type for a MerchantDevice
  """

  @type t :: %__MODULE__{
          os: String.t() | nil,
          osVersion: String.t() | nil,
          reference: String.t() | nil
        }

  defstruct [:os, :osVersion, :reference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [os: :string, osVersion: :string, reference: :string]
  end
end
