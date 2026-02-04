defmodule Adyen.BalancePlatform.NetworkTokenActivationDataRequest do
  @moduledoc """
  Provides struct and type for a NetworkTokenActivationDataRequest
  """

  @type t :: %__MODULE__{sdkOutput: String.t() | nil}

  defstruct [:sdkOutput]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [sdkOutput: :string]
  end
end
