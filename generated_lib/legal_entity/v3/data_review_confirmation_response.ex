defmodule Adyen.LegalEntity.V3.DataReviewConfirmationResponse do
  @moduledoc """
  Provides struct and type for a DataReviewConfirmationResponse
  """

  @type t :: %__MODULE__{dataReviewedAt: String.t() | nil}

  defstruct [:dataReviewedAt]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [dataReviewedAt: :string]
  end
end
