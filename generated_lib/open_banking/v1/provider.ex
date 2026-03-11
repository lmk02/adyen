defmodule Adyen.OpenBanking.V1.Provider do
  @moduledoc """
  Provides struct and type for a Provider
  """

  @type t :: %__MODULE__{logoURL: String.t(), name: String.t()}

  defstruct [:logoURL, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [logoURL: :string, name: :string]
  end
end
