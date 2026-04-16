defmodule Adyen.Checkout.V72.AppIdentifierInfo do
  @moduledoc """
  Provides struct and type for a AppIdentifierInfo
  """

  @type t :: %__MODULE__{androidPackageId: String.t() | nil, iosScheme: String.t() | nil}

  defstruct [:androidPackageId, :iosScheme]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [androidPackageId: :string, iosScheme: :string]
  end
end
