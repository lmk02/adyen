defmodule Adyen.PaymentsApp.V1.BoardingTokenRequest do
  @moduledoc """
  Provides struct and type for a BoardingTokenRequest
  """

  @type t :: %__MODULE__{boardingRequestToken: String.t()}

  defstruct [:boardingRequestToken]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [boardingRequestToken: :string]
  end
end
