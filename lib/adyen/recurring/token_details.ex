defmodule Adyen.Recurring.TokenDetails do
  @moduledoc """
  Provides struct and type for a TokenDetails
  """

  @type t :: %__MODULE__{tokenData: map | nil, tokenDataType: String.t() | nil}

  defstruct [:tokenData, :tokenDataType]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [tokenData: :map, tokenDataType: :string]
  end
end
