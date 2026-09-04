defmodule Adyen.Management.V3.NonprofitCause do
  @moduledoc """
  Provides struct and type for a NonprofitCause
  """

  @type t :: %__MODULE__{
          bannerUrl: String.t(),
          description: String.t(),
          id: String.t() | nil,
          locales: [String.t()],
          name: String.t()
        }

  defstruct [:bannerUrl, :description, :id, :locales, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [bannerUrl: :string, description: :string, id: :string, locales: [:string], name: :string]
  end
end
