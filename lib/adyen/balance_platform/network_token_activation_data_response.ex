defmodule Adyen.BalancePlatform.NetworkTokenActivationDataResponse do
  @moduledoc """
  Provides struct and type for a NetworkTokenActivationDataResponse
  """

  @type t :: %__MODULE__{sdkInput: String.t() | nil}

  defstruct [:sdkInput]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [sdkInput: :string]
  end
end
