defmodule Adyen.LegalEntity.V3.SourceOfFunds do
  @moduledoc """
  Provides struct and type for a SourceOfFunds
  """

  @type t :: %__MODULE__{
          acquiringBusinessLineId: String.t() | nil,
          adyenProcessedFunds: boolean | nil,
          description: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:acquiringBusinessLineId, :adyenProcessedFunds, :description, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      acquiringBusinessLineId: :string,
      adyenProcessedFunds: :boolean,
      description: :string,
      type: {:const, "business"}
    ]
  end
end
