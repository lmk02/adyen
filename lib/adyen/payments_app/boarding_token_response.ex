defmodule Adyen.PaymentsApp.BoardingTokenResponse do
  @moduledoc """
  Provides struct and type for a BoardingTokenResponse
  """

  @type t :: %__MODULE__{boardingToken: String.t(), installationId: String.t()}

  defstruct [:boardingToken, :installationId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [boardingToken: :string, installationId: :string]
  end
end
