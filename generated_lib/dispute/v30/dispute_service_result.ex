defmodule Adyen.Dispute.V30.DisputeServiceResult do
  @moduledoc """
  Provides struct and type for a DisputeServiceResult
  """

  @type t :: %__MODULE__{errorMessage: String.t() | nil, success: boolean}

  defstruct [:errorMessage, :success]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [errorMessage: :string, success: :boolean]
  end
end
