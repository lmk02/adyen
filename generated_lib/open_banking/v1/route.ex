defmodule Adyen.OpenBanking.V1.Route do
  @moduledoc """
  Provides struct and type for a Route
  """

  @type t :: %__MODULE__{link: String.t(), provider: Adyen.OpenBanking.V1.Provider.t()}

  defstruct [:link, :provider]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [link: :string, provider: {Adyen.OpenBanking.V1.Provider, :t}]
  end
end
