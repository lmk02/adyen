defmodule Adyen.Management.V3.VippsResponseInfo do
  @moduledoc """
  Provides struct and type for a VippsResponseInfo
  """

  @type t :: %__MODULE__{logo: String.t() | nil, subscriptionCancelUrl: String.t() | nil}

  defstruct [:logo, :subscriptionCancelUrl]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [logo: :string, subscriptionCancelUrl: :string]
  end
end
