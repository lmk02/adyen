defmodule Adyen.Management.V1.AndroidAppsResponse do
  @moduledoc """
  Provides struct and type for a AndroidAppsResponse
  """

  @type t :: %__MODULE__{data: [Adyen.Management.V1.AndroidApp.t()] | nil}

  defstruct [:data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: [{Adyen.Management.V1.AndroidApp, :t}]]
  end
end
