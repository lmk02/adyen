defmodule Adyen.Management.SplitConfigurationList do
  @moduledoc """
  Provides struct and type for a SplitConfigurationList
  """

  @type t :: %__MODULE__{data: [Adyen.Management.SplitConfiguration.t()] | nil}

  defstruct [:data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: [{Adyen.Management.SplitConfiguration, :t}]]
  end
end
